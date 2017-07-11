function notify()
  for var = 1,3 do
  	vibrator();
  	mSleep(500);
  end
end

flag = deviceIsLock();

if flag ~= 0 then
    unlockDevice();
    mSleep(1000);
end

for var = 1,3 do
	runApp('com.alibaba.android.rimet');
	mSleep(30000);
	closeApp('com.alibaba.android.rimet');
	notify()
	mSleep(2000);
end