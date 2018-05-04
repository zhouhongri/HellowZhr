package Util;
  
  
import java.math.BigInteger;  
import java.security.SecureRandom;  
import java.util.Random;  
import java.util.UUID;  
import java.util.concurrent.locks.ReentrantLock;  
  

public abstract class UUIDUtils {  
  
    private static boolean IS_THREADLOCALRANDOM_AVAILABLE = false;  
    private static       Random random;  
    private static final long   leastSigBits;  
    private static final ReentrantLock lock = new ReentrantLock();  
    private static long lastTime;  
  
    static {  
        try {  
            IS_THREADLOCALRANDOM_AVAILABLE = null != UUIDUtils.class.getClassLoader().loadClass(  
                    "java.util.concurrent.ThreadLocalRandom"  
            );  
        } catch(ClassNotFoundException e) {  
        }  
  
        byte[] seed = new SecureRandom().generateSeed(8);  
        leastSigBits = new BigInteger(seed).longValue();  
        if(!IS_THREADLOCALRANDOM_AVAILABLE) {  
            random = new Random(leastSigBits);  
        }  
    }  
  
    private UUIDUtils() {  
    }  
  
    /** 
     * Create a new random UUID. 
     * 
     * @return the new UUID 
     */  
    public static UUID random() {  
        byte[] randomBytes = new byte[16];  
        if(IS_THREADLOCALRANDOM_AVAILABLE) {  
            java.util.concurrent.ThreadLocalRandom.current().nextBytes(randomBytes);  
        } else {  
            random.nextBytes(randomBytes);  
        }  
  
        long mostSigBits = 0;  
        for(int i = 0; i < 8; i++) {  
            mostSigBits = (mostSigBits << 8) | (randomBytes[i] & 0xff);  
        }  
        long leastSigBits = 0;  
        for(int i = 8; i < 16; i++) {  
            leastSigBits = (leastSigBits << 8) | (randomBytes[i] & 0xff);  
        }  
  
        return new UUID(mostSigBits, leastSigBits);  
    }  
  
    /** 
     * Create a new time-based UUID. 
     * 
     * @return the new UUID 
     */  

  
} 