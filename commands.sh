./filter leftfuck.jpg rightfuck.jpg --algorithm=sgbm --max_disparity=320 --i=intrinsics.yml --e=extrinsics.yml --scale=1 --window_size=7--filter=fbs_conf --dst_path=filter.png
./canny filter.png
./generate_depth_map leftfuck.jpg rightfuck.jpg --algorithm=sgbm --blocksize=7 --max-disparity=320 --scale=1 -i=intrinsics.yml -e=extrinsics.yml
./calibrate testimgs.xml
