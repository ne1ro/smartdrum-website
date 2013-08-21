ActiveAdmin.register News do
  form do |f|
  f.inputs do
    f.input :header
    f.input :text, :input_html => {:class => "ckeditor"}
  end
  f.buttons
end
end
