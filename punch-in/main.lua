function click(x, y)
    touchDown(x, y)
    mSleep(30)
    touchUp(x, y)
end

function notify()
  for var = 1,3 do
    vibrator();
    mSleep(500);
  end
end

function shake()
  types = getDeviceType();
  if types ~= 3 and types ~= 4 then
    shakeDevice(0,0,-3,3000);
    mSleep(3000);
  end
end

function unlock()
  flag = deviceIsLock();
  if flag ~= 0 then
    unlockDevice();
    mSleep(1000);
  end
end

shake();
unlock();

for var = 1,3 do
  runApp('com.alibaba.android.rimet');
  setScreenScale(true, 720, 1280);
  mSleep(10000);
  click(360,1200);
  mSleep(5000)
  x,y = findMultiColorInRegionFuzzy( 0x4da9eb, "0|6|0xffffff,6|6|0x4da9eb,6|18|0x4da9eb,6|21|0xffffff,17|21|0x4da9eb,15|10|0xe0f0fb,15|-1|0xcde6f9,15|-12|0xdeeffb,15|-18|0x4da9eb", 90, 0, 0, 719, 1279);
  click(x,y);
  mSleep(20000);
  x1,y1 = findMultiColorInRegionFuzzy( 0x7baaf7, "0|11|0xffffff,6|8|0x85b0f8,6|-8|0xffffff,6|-16|0x5e97f6,-3|-16|0xffffff,-10|-2|0x5e97f6,-12|10|0xffffff,-17|12|0xf6f9ff,14|12|0xf6f9ff", 90, 0, 0, 719, 1279)
  click(x1,y1);
  click(x1,y1);
  click(x1,y1);
  mSleep(10000);
  setScreenScale(false)
  closeApp('com.alibaba.android.rimet');
  notify();
  mSleep(5000);
end