fcc_data:
	mkdir -p data
	cd data; curl -O https://raw.githubusercontent.com/ds5110/rdata/main/fcc/bdc_23_Cable_fixed_broadband_063022.zip
	cd data; curl -O https://raw.githubusercontent.com/ds5110/rdata/main/fcc/bdc_23_Copper_fixed_broadband_063022.zip
	cd data; curl -O https://raw.githubusercontent.com/ds5110/rdata/main/fcc/bdc_23_Fiber-to-the-Premises_fixed_broadband_063022.zip
	cd ..

clean:
	rm -rf data