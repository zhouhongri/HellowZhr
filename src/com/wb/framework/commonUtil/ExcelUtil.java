package com.wb.framework.commonUtil;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;


public class ExcelUtil
{
    
    private Workbook workBook = null;
    
    private Integer sheetIndex = null;
    
    private Integer rowIndex = null;
    
    private Integer cellIndex = null;
    
    private boolean ifInit = false;//�Ƿ��ʼ������
    
    private final List<String[]> dataList = new ArrayList<String[]>();
    
    // ��ʼ��BEGIN��====================================================================��
    /**
     * �޲ι��췽��
     */
    public ExcelUtil()
    {
    }
    
    /**
     * ��ʼ����������
     * 
     * @param intput ������
     */
    public ExcelUtil(String type, InputStream intput)
    {
        
        try
        {
            if (type.equals("xls"))
            {
                workBook = new HSSFWorkbook(intput);
            }
            else if (type.equals("xlsx"))
            {
                workBook = new XSSFWorkbook(intput);
            }
            else
            {
                throw new RuntimeException("�ĵ���ʽ����");
            }
        }
        catch (FileNotFoundException e)
        {
        	e.printStackTrace();
        }
        catch (IOException e)
        {
        	e.printStackTrace();
        }
    }
    
    // ��ʼ��END��====================================================================��
    
    // Excel����BEGIN��====================================================================��
    /**
     * ȡExcel�������ݣ�����header
     * 
     * @param sheetIndex sheetҳ����
     * @return ��ǰsheetҳ��������
     */
    public List<String[]> getAllData(int sheetIndex)
    {
        dataList.clear();
        int columnNum = 0;
        this.ifInit = true;
        this.sheetIndex = sheetIndex;
        Sheet sheet = workBook.getSheetAt(sheetIndex);
        if (sheet.getRow(0) != null)
        {
            columnNum = sheet.getRow(0).getLastCellNum() - sheet.getRow(0).getFirstCellNum();
        }
        if (columnNum <= 0)
        {
            return new ArrayList<String[]>();
        }
        for (Row row : sheet)
        {
            String[] singleRow = new String[columnNum];
            int n = 0;
            for (int i = 0; i < columnNum; i++)
            {
                Cell cell = row.getCell(i, Row.CREATE_NULL_AS_BLANK);
                switch (cell.getCellType())
                {
                    case Cell.CELL_TYPE_BLANK:
                        singleRow[n] = "";
                        break;
                    case Cell.CELL_TYPE_BOOLEAN:
                        singleRow[n] = Boolean.toString(cell.getBooleanCellValue());
                        break;
                    case Cell.CELL_TYPE_NUMERIC:
                        if (DateUtil.isCellDateFormatted(cell))
                        {
                            singleRow[n] = String.valueOf(cell.getDateCellValue());
                        }
                        else
                        {
                            cell.setCellType(Cell.CELL_TYPE_STRING);
                            String temp = cell.getStringCellValue();
                            if (temp.indexOf(".") > -1)
                            {
                                singleRow[n] = String.valueOf(new Double(temp)).trim();
                            }
                            else
                            {
                                singleRow[n] = temp.trim();
                            }
                        }
                        break;
                    case Cell.CELL_TYPE_STRING:
                        singleRow[n] = cell.getStringCellValue().trim();
                        break;
                    case Cell.CELL_TYPE_ERROR:
                        singleRow[n] = "";
                        break;
                    case Cell.CELL_TYPE_FORMULA:
                        cell.setCellType(Cell.CELL_TYPE_STRING);
                        singleRow[n] = cell.getStringCellValue();
                        if (singleRow[n] != null)
                        {
                            singleRow[n] = singleRow[n].replaceAll("#N/A", "").trim();
                        }
                        break;
                    default:
                        singleRow[n] = "";
                        break;
                }
                n++;
            }
            dataList.add(singleRow);
        }
        return dataList;
    }
    
    /**
     * �����������
     * 
     * @return �����������
     */
    public int getRowNum(int sheetIndex)
    {
        Sheet sheet = workBook.getSheetAt(sheetIndex);
        return sheet.getLastRowNum() + 1;
    }
    
    /**
     * �����������
     * 
     * @return �����������
     */
    public int getColumnNum(int sheetIndex)
    {
        Sheet sheet = workBook.getSheetAt(sheetIndex);
        Row row = sheet.getRow(0);
        if (row != null && row.getLastCellNum() > 0)
        {
            return row.getLastCellNum();
        }
        return 0;
    }
    
    /**
     * ��ȡĳһ������
     * 
     * @param sheetIndex sheetҳ
     * @param rowIndex ������
     * @return ������
     */
    public String[] getRowData(int sheetIndex, int rowIndex)
    {
        if (this.sheetIndex != sheetIndex || !this.ifInit)
        {
            this.getAllData(sheetIndex);
        }
        if (rowIndex > this.getRowNum(sheetIndex) || this.dataList == null || this.dataList.size() <= 0)
        {
            return new String[0];
        }
        return this.dataList.get(rowIndex);
    }
    
    /**
     * ��ȡĳһ������
     * 
     * @param sheetIndex sheetҳ
     * @param colIndex ������
     * @param beginIndex ��ʼ��ȡ�±�
     * @return ������
     */
    public String[] getColumnData(int sheetIndex, int colIndex, int beginIndex)
    {
        if (this.sheetIndex != sheetIndex || !this.ifInit)
        {
            this.getAllData(sheetIndex);
        }
        String[] dataArray = null;
        if (colIndex > this.getColumnNum(sheetIndex) || this.dataList == null || this.dataList.size() <= 0)
        {
            return new String[0];
        }
        dataArray = new String[this.getRowNum(sheetIndex) - beginIndex];
        int index = 0;
        for (int i = beginIndex; i < dataList.size(); i = i + 1)
        {
            String[] rowData = dataList.get(i);
            if (rowData != null)
            {
                dataArray[index] = rowData[colIndex];
                index++;
            }
        }
        return dataArray;
    }
    // Excel����END��====================================================================��
    
    // Excel����BEGIN��====================================================================��
    /**
     * ����HSSFEXCEL
     * 
     * @return ExcelUtil
     */
    public ExcelUtil HSSFWorkBook()
    {
        if (this.getWorkBook() == null)
        {
            this.setWorkBook(new HSSFWorkbook());
        }
        return this;
    }
    
    /**
     * ����Sheetҳ�������ֱ�ӷ���
     * 
     * @return ExcelUtil
     */
    public ExcelUtil sheet()
    {
        try
        {
            this.getWorkBook().getSheetAt(sheetIndex);
        }
        catch (Exception e)
        {
            this.getWorkBook().createSheet();
        }
        return this;
    }
    
    /**
     * �����У������ֱ�ӷ���
     * 
     * @return ExcelUtil
     */
    public ExcelUtil row()
    {
        if (this.getWorkBook().getSheetAt(sheetIndex).getRow(rowIndex) == null)
        {
            this.getWorkBook().getSheetAt(sheetIndex).createRow(rowIndex);
        }
        return this;
    }
    
    /**
     * �����У������ֱ�ӷ���
     * 
     * @return ExcelUtil
     */
    public ExcelUtil cell()
    {
        if (this.getWorkBook().getSheetAt(sheetIndex).getRow(rowIndex).getCell(cellIndex) == null)
        {
            this.getWorkBook().getSheetAt(sheetIndex).getRow(rowIndex).createCell(cellIndex);
        }
        return this;
    }
    
    /**
     * ����λ������
     * 
     * @param sheetIndex sheetҳ����
     * @param rowIndex ������
     * @param cellIndex ������
     * @return ExcelUtil
     */
    public ExcelUtil location(int sheetIndex, int rowIndex, int cellIndex)
    {
        this.sheetIndex = sheetIndex;
        this.rowIndex = rowIndex;
        this.cellIndex = cellIndex;
        return this;
    }
    
    /**
     * �趨Cellֵ
     * 
     * @param cellValue
     * @return ExcelUtil
     */
    public ExcelUtil cellVal(String cellValue)
    {
        this.getWorkBook().getSheetAt(sheetIndex).getRow(rowIndex).getCell(cellIndex).setCellValue(cellValue);
        return this;
    }
    
    /**
     * �趨����λ�õ�Cell��ֵ
     * 
     * @param sheetIndex sheetҳ����
     * @param rowIndex ������
     * @param cellIndex ������
     * @param cellValue Cellֵ
     * @return ExcelUtil
     */
    public ExcelUtil cellVal(int sheetIndex, int rowIndex, int cellIndex, String cellValue)
    {
        this.location(sheetIndex, rowIndex, cellIndex).HSSFWorkBook().sheet().row().cell().cellVal(cellValue);
        return this;
    }
    
    // Excel����END��====================================================================��
    
    // ����GET,SET����BEGIN��====================================================================��
    public Workbook getWorkBook()
    {
        return workBook;
    }
    
    public void setWorkBook(Workbook workBook)
    {
        this.workBook = workBook;
    }
    
    public Integer getSheetIndex()
    {
        return sheetIndex;
    }
    
    public void setSheetIndex(Integer sheetIndex)
    {
        this.sheetIndex = sheetIndex;
    }
    
    public Integer getRowIndex()
    {
        return rowIndex;
    }
    
    public void setRowIndex(Integer rowIndex)
    {
        this.rowIndex = rowIndex;
    }
    
    public Integer getCellIndex()
    {
        return cellIndex;
    }
    
    public void setCellIndex(Integer cellIndex)
    {
        this.cellIndex = cellIndex;
    }
    // ����GET,SET����END��====================================================================��
}
