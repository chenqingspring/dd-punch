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

function vSlide(x, y1, y2)
  for var = 1,3 do
    touchDown(x, y1);
    mSleep(30);
    touchMove(x, y2);
    mSleep(30);
    touchUp(x, y2);
    mSleep(500)
  end
end

shake();
unlock();
mSleep(1000);
vSlide(500, 900, 500);

for var = 1,3 do
  runApp('com.alibaba.android.rimet');
  mSleep(10000);
  click(584,286);
  mSleep(10000)
  click(473,1658);
  mSleep(10000);
  click(514,1220);
  mSleep(10000);
  closeApp('com.alibaba.android.rimet');
  notify();
  mSleep(5000);
end