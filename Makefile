data:
	mkdir -p data
	cd data
#	curl -O https://broadbandmap.fcc.gov/data-download/nationwide-data/bdc_23_Cable_fixed_broadband_063022.zip
#	mv bdc_23_Cable_fixed_broadband_063022.zip data/cable.zip
#	curl -O https://broadbandmap.fcc.gov/data-download/nationwide-data/bdc_23_Copper_fixed_broadband_063022.zip
#	mv bdc_23_Copper_fixed_broadband_063022.zip data/copper.zip
#	curl -O https://broadbandmap.fcc.gov/data-download/nationwide-data/bdc_23_Fiber-to-the-Premises_fixed_broadband_063022.zip
#	mv bdc_23_Fiber-to-the-Premises_fixed_broadband_063022.zip data/fiber.zip
# Instead we will manually download, unzip and store in a local directory called "data".  Select the above files for Maine and unzip in /data
# https://broadbandmap.fcc.gov/data-download/nationwide-data
	curl -O https://www2.census.gov/geo/tiger/TIGER2022/TABBLOCK20/tl_2022_23_tabblock20.zip
	mv tl_2022_23_tabblock20.zip data/geospace.zip
	curl -O https://www2.census.gov/geo/maps/DC2020/DC20BLK/st23_me/place/p2345845_millinocket/DC20BLK_P2345845_BLK2MS.txt
	mv DC20BLK_P2345845_BLK2MS.txt data/millinocket.txt
clean:
	rm -rf data