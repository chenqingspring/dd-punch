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
	mSleep(30000);
	closeApp('com.alibaba.android.rimet');
	notify()
	mSleep(2000);
end