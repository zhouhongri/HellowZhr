package Servlet;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import Service.BaseService;
import Service.InsertService;

@Controller
public class InsertSon {
	InsertService is = new InsertService();
	BaseService bs = new BaseService();

	public Map<String, String> insert(String type, String userid,
			HttpServletRequest req, HttpServletResponse resp) {
		Map<String, String> map = new HashMap();
		String status = req.getParameter("status");
		String status2 = req.getParameter("status2");
		String name="";
		switch (type) {
		case "lunwen":
			String lwbt = req.getParameter("lwbt");
			String kwmc = req.getParameter("kwmc");
			String ec = req.getParameter("ec");
			String sc = req.getParameter("sc");
			String ic = req.getParameter("ic");
			String zzmz = req.getParameter("zzmz");
			String authorseq = req.getParameter("authorseq");
			String zzgh = req.getParameter("zzgh");
			String url = req.getParameter("url");
			String df = req.getParameter("df");
			String df2 = req.getParameter("df2");
			String rank = req.getParameter("rank");
			String time = req.getParameter("time");
			String searchsouce = lwbt + kwmc + ec + sc + ic + zzmz + authorseq
					+ url + df + rank + time + df2 + "Œ¥…Û∫À";
			is.insertlw(lwbt, kwmc, time, ec, sc, ic, zzmz, zzgh, authorseq,
					rank, df, url, status, searchsouce, status2, df2);
			map.put("id", bs.queryZuoPinID(userid, lwbt, type).get("id") + "");
			map.put("type", type);
			break;
		case "xueshuzhuzuo":
			 name = req.getParameter("name");
			String chubanshe = req.getParameter("chubanshe");
			String year = req.getParameter("year");
			String author = req.getParameter("author");
			authorseq = req.getParameter("authorseq");
			String authorid = req.getParameter("authorid");
			url = req.getParameter("url");
			String score = req.getParameter("score");
			String score2 = req.getParameter("score2");
			rank = req.getParameter("rank");
			searchsouce = name + chubanshe + year + author + authorseq
					 + url + score + rank + score2 + "Œ¥…Û∫À";
			is.insertXSZZ(name, chubanshe, year, author, authorseq, authorid,
					url, score, rank, status, searchsouce, status2, score2);
			map.put("id", bs.queryZuoPinID(userid, name, type).get("id") + "");
			map.put("type", type);
			break;
		case "keyanjiangli":
			name = req.getParameter("name");
			year = req.getParameter("year");
			author = req.getParameter("author");
			authorseq = req.getParameter("authorseq");
			authorid = req.getParameter("authorid");
			url = req.getParameter("url");
			score = req.getParameter("score");
			score2 = req.getParameter("score2");
			rank = req.getParameter("rank");
			searchsouce = name + year + author + authorseq + url
					+ score + rank + score2 + "Œ¥…Û∫À";
			is.insertKYJL(name, year, author, authorseq, authorid, url, score,
					rank, status, searchsouce, status2, score2);
			map.put("id", bs.queryZuoPinID(userid, name, type).get("id") + "");
			map.put("type", type);
			break;
		case "zhuanli":
			String zlmz = req.getParameter("zlmz");
			String zlh = req.getParameter("zlh");
			zzmz = req.getParameter("zzmz");
			authorseq = req.getParameter("authorseq");
			zzgh = req.getParameter("zzgh");
			url = req.getParameter("url");
			df = req.getParameter("df");
			df2 = req.getParameter("df2");
			rank = req.getParameter("rank");
			year = req.getParameter("year");
			searchsouce = zlmz + zlh + zzmz + authorseq + url + df + rank
					+ year + df2 + "Œ¥…Û∫À";
			is.insertzl(zlmz, zlh, year, zzmz, zzgh, authorseq, rank, df, url,
					status, searchsouce, status2, df2);
			map.put("id", bs.queryZuoPinID(userid, zlmz, type).get("id") + "");
			map.put("type", type);
			break;
		case "xueke":
			lwbt = req.getParameter("lwbt");
			zzmz = req.getParameter("zzmz");
			authorseq = req.getParameter("authorseq");
			zzgh = req.getParameter("zzgh");
			url = req.getParameter("url");
			df = req.getParameter("df");
			df2 = req.getParameter("df2");
			rank = req.getParameter("rank");
			year = req.getParameter("year");
			searchsouce = lwbt + zzmz + authorseq + url + df + rank + year
					+ df2 + "Œ¥…Û∫À";
			is.insertxkjs(lwbt, year, zzmz, zzgh, authorseq, rank, df, url,
					status, searchsouce, status2, df2);
			map.put("id", bs.queryZuoPinID(userid, lwbt, "xueke").get("id")
					+ "");
			map.put("type", type);
			break;
		case "keyanxiangmu":
			String xmmz = req.getParameter("xmmz");
			zzmz = req.getParameter("zzmz");
			authorseq = req.getParameter("authorseq");
			zzgh = req.getParameter("zzgh");
			url = req.getParameter("url");
			df = req.getParameter("df");
			df2 = req.getParameter("df2");
			rank = req.getParameter("rank");
			year = req.getParameter("year");
			searchsouce = xmmz + zzmz + authorseq + url + df + rank + year
					+ df2 + "Œ¥…Û∫À";
			is.insertkyxm(xmmz, year, zzmz, zzgh, authorseq, rank, df, url,
					status, searchsouce, status2, df2);
			map.put("id", bs.queryZuoPinID(userid, xmmz, type).get("id") + "");
			map.put("type", type);
			break;
		case "zhuanye":
			String zyname = req.getParameter("zyname");
			zzmz = req.getParameter("zzmz");
			authorseq = req.getParameter("authorseq");
			zzgh = req.getParameter("zzgh");
			url = req.getParameter("url");
			df = req.getParameter("df");
			df2 = req.getParameter("df2");
			rank = req.getParameter("rank");
			year = req.getParameter("year");
			searchsouce = zyname + zzmz + authorseq + url + df + rank + year
					+ df2 + "Œ¥…Û∫À";
			is.insertzy(zyname, rank, zzgh, zzmz, authorseq, year, df, status,
					searchsouce, df2, status2, url);
			map.put("id", bs.queryZuoPinID(userid, zyname, type).get("id") + "");
			map.put("type", type);
			break;

		case "jiaoxuemingshi":
			zzmz = req.getParameter("zzmz");
			authorseq = req.getParameter("authorseq");
			zzgh = req.getParameter("zzgh");
			url = req.getParameter("url");
			df = req.getParameter("df");
			df2 = req.getParameter("df2");
			rank = req.getParameter("rank");
			year = req.getParameter("year");
			searchsouce = zzmz + authorseq + url + df + rank + year + df2
					+ "Œ¥…Û∫À";
			is.insertms(rank, zzgh, zzmz, df, status, year, searchsouce, df2,
					status2, authorseq, url);
			map.put("id", bs.queryZuoPinID(userid, rank, "mingshi").get("id")
					+ "");
			map.put("type", "mingshi");
			break;
		case "kechengjianshe":
			name = req.getParameter("name");
			zzmz = req.getParameter("zzmz");
			authorseq = req.getParameter("authorseq");
			zzgh = req.getParameter("zzgh");
			url = req.getParameter("url");
			df = req.getParameter("df");
			df2 = req.getParameter("df2");
			rank = req.getParameter("rank");
			year = req.getParameter("year");
			searchsouce = name + zzmz + authorseq + url + df + rank + year
					+ df2 + "Œ¥…Û∫À";
			is.insertkcjs(name, rank, zzgh, zzmz, authorseq, year, df, status,
					searchsouce, df2, status2, url);
			map.put("id", bs.queryZuoPinID(userid, name, type).get("id") + "");
			map.put("type", type);
			break;
		case "jxyjxm":
			name = req.getParameter("name");
			zzmz = req.getParameter("zzmz");
			authorseq = req.getParameter("authorseq");
			zzgh = req.getParameter("zzgh");
			url = req.getParameter("url");
			df = req.getParameter("df");
			df2 = req.getParameter("df2");
			rank = req.getParameter("rank");
			year = req.getParameter("year");
			searchsouce = name + zzmz + authorseq + url + df + rank + year
					+ df2 + "Œ¥…Û∫À";
			is.insertjxyjxm(name, rank, zzgh, zzmz, authorseq, year, df, status,
					searchsouce, df2, status2, url);
			map.put("id", bs.queryZuoPinID(userid, name, type).get("id") + "");
			map.put("type", type);
			break;
		case "shiyanshijianshe":
			name = req.getParameter("name");
			zzmz = req.getParameter("zzmz");
			authorseq = req.getParameter("authorseq");
			zzgh = req.getParameter("zzgh");
			url = req.getParameter("url");
			df = req.getParameter("df");
			df2 = req.getParameter("df2");
			rank = req.getParameter("rank");
			year = req.getParameter("year");
			searchsouce = name + zzmz + authorseq + url + df + rank + year
					+ df2 + "Œ¥…Û∫À";
			is.insertsysjs(name, rank, zzgh, zzmz, authorseq, year, df, status,
					searchsouce, df2, status2, url);
			map.put("id", bs.queryZuoPinID(userid, name, type).get("id") + "");
			map.put("type", type);
			break;
		case "jiaocaizhuzuo":
			name = req.getParameter("name");
			chubanshe = req.getParameter("chubanshe");
			zzmz = req.getParameter("zzmz");
			authorseq = req.getParameter("authorseq");
			zzgh = req.getParameter("zzgh");
			url = req.getParameter("url");
			df = req.getParameter("df");
			df2 = req.getParameter("df2");
			rank = req.getParameter("rank");
			year = req.getParameter("year");
			searchsouce = name +chubanshe+ zzmz + authorseq + url + df + rank + year
					+ df2 + "Œ¥…Û∫À";
			is.insertjczz(name, chubanshe, rank, zzgh, zzmz, authorseq, year, df, status,
					searchsouce, df2, status2, url);
			map.put("id", bs.queryZuoPinID(userid, name, type).get("id") + "");
			map.put("type", type);
			break;
		default:
			break;

		}

		return map;

	}
}
