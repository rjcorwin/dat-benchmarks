
TEST_ID=$(uuid)
echo "

Running 100 with Test ID of $TEST_ID

"
mkdir $TEST_ID
cd $TEST_ID
dat share &
sleep 5

for i in {1..100}
do
	echo $(uuid) >> data.txt
	du -s . | head -n1 | awk '{print $1}' >> ../$TEST_ID.summary.txt
done

TEST_1_RESULTS=$(du -s . | head -n1 | awk '{print $1}')
cd ..


TEST_ID=$(uuid)
echo "

Running 1,000 with Test ID of $TEST_ID

"
mkdir $TEST_ID
cd $TEST_ID
dat share &
sleep 5

for i in {1..1000}
do
	echo $(uuid) >> data.txt
	du -s . | head -n1 | awk '{print $1}' >> ../$TEST_ID.summary.txt
done

TEST_2_RESULTS=$(du -s . | head -n1 | awk '{print $1}')
cd ..


TEST_ID=$(uuid)
echo "

Running 10,000 with Test ID of $TEST_ID

"
mkdir $TEST_ID
cd $TEST_ID
dat share &
sleep 5

for i in {1..10000}
do
	echo $(uuid) >> data.txt
	du -s . | head -n1 | awk '{print $1}' >> ../$TEST_ID.summary.txt
done

TEST_3_RESULTS=$(du -s . | head -n1 | awk '{print $1}')
cd ..


TEST_ID=$(uuid)
echo "

Running 100,000 with Test ID of $TEST_ID

"
mkdir $TEST_ID
cd $TEST_ID
dat share &
sleep 5

for i in {1..100000}
do
	echo $(uuid) >> data.txt
	du -s . | head -n1 | awk '{print $1}' >> ../$TEST_ID.summary.txt
done

TEST_4_RESULTS=$(du -s . | head -n1 | awk '{print $1}')
cd ..


echo "

RESULTS:

	    100 datapoints: $TEST_1_RESULTS bytes
	  1,000 datapoints: $TEST_2_RESULTS bytes
	 10,000 datapoints: $TEST_3_RESULTS bytes
	100,000 datapoints: $TEST_4_RESULTS bytes

"




