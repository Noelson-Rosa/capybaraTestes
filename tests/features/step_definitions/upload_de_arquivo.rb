Quando('eu faco um upload de arquivo') do
 visit '/outros/uploaddearquivos'
 # attach_file('upload', 'C:\Users\NRKRA\Desktop\capybarateste\tests\features\download.jpeg',  #       make_visible: true)




  @foto = File.join(Dir.pwd, '\features\download.jpeg')
  attach_file('upload', @foto, make_visible: true)
  sleep(5)

end
  