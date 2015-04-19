person1 = {:first => "taro", :last => "yamada"}
person2 = {:first => "yumiko", :last => "tanaga"}
person3 = {:first => "jiro", :last => "horiuchi"}

params = Hash.new
params[:father]=person1
params[:mother]=person2
params[:child]=person3
p params[:mother][:first]
