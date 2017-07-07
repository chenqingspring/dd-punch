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

for var = 1,3 do
  init(0);
  runApp('com.alibaba.android.rimet');
  setScreenScale(true, 720, 1280)
  mSleep(10000);
  click(360,1200);
  mSleep(3000)
  x,y = findMultiColorInRegionFuzzy( 0x4da9eb, "0|6|0xffffff,6|6|0x4da9eb,6|18|0x4da9eb,6|21|0xffffff,17|21|0x4da9eb,15|10|0xe0f0fb,15|-1|0xcde6f9,15|-12|0xdeeffb,15|-18|0x4da9eb", 90, 0, 0, 719, 1279);
  click(x,y);
  mSleep(10000);
  click(377,847);
  click(377,847);
  click(377,847);
  mSleep(5000);
  setScreenScale(false)
  closeApp('com.alibaba.android.rimet');
  notify();
  mSleep(2000);
end