function notify()
  for var = 1,3 do
  	vibrator();
  	mSleep(500);
  end
end


for var = 1,3 do
	runApp('com.alibaba.android.rimet');
	mSleep(10000);
	closeApp('com.alibaba.android.rimet');
	notify()
	mSleep(2000);
end