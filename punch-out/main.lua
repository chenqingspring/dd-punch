function click(x, y)
    touchDown(x, y)
    mSleep(30)
    touchUp(x, y)
end

runApp('com.alibaba.android.rimet');

init(0);

setScreenScale(true, 720, 1280)

mSleep(10000);

click(360,1200);

mSleep(3000)

click(95,674);

mSleep(10000); 

click(377,847);

mSleep(5000);

setScreenScale(false)

closeApp('com.alibaba.android.rimet');