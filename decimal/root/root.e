note
	description: "Calendar application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	ROOT

inherit
	ARGUMENTS
	ES_SUITE

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			add_test (create {MA_DECIMAL_TESTS}.make)
			add_test (create {SLOW_DECIMAL_TESTS}.make)
			add_test (create {JSO_TESTS}.make)
			add_test (create {TEST_DECIMAL_WRAPPER1}.make)
			show_browser
			run_espec
		end

end
