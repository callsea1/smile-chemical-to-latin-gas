#convert_spec.rb

require 'convert'

describe Convert, "#output" do
   it "returns the IUPAC version of the SMILE string" do
   convert = Convert.new
   convert.output("(C)CCCC").should eq("pentane") #five carbons
   convert.output("(C)CCCCCCCCC(C)CCCCCCCCC").should eq("icosane")#twenty
   convert.output("(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC").should eq("triacontane")#thirty
   convert.output("(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC").should eq("tetracontane")#fourty
   convert.output("(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC").should eq("pentacontane")#fifty
   convert.output("(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC").should eq("hexacontane")#sixty
   convert.output("(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCC").should eq("heptaheptacontane")#seventy-seven
   convert.output("(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCC").should eq("tetraoctacontane")#eighty-four
   convert.output("(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)C").should eq("dononacontane")#niney-two
   convert.output("(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC(C)CCCCCCCCC").should eq("hectane")#one-hundred

  end
end