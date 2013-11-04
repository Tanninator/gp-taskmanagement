module ControllerTemplate
  def self.set_model(class_name)
    class_name = class_name.to_s # make sure it's a string
    var_name = get_instance_variable_name(class_name)

    class_eval %Q{
      # POST /resource
      # POST /resource.json
      def create
        @#{var_name} = #{class_name}.new(#{var_name}_params)

        respond_to do |format|
          if @#{var_name}.save
            format.html { redirect_to @#{var_name}, notice: "#{class_name} was successfully created." }
            format.json { render action: 'show', status: :created, location: @#{var_name} }
          else
            format.html { render action: 'new' }
            format.json { render json: @#{var_name}.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /resource/1
      # DELETE /resource/1.json
      def destroy
        @#{var_name}.destroy
        respond_to do |format|
          format.html { redirect_to #{var_name}s_url }
          format.json { head :no_content }
        end
      end
    }
  end

  def self.get_instance_variable_name(resource_name)
    return "" if resource_name == nil
    res = String.new(resource_name)
    convert = nil
    while res != convert
      convert = res
      res.match /([^_])([A-Z])/
      break if $1 == nil or $2 == nil
      res.sub! /([^_])([A-Z])/, "#{$1}_#{$2.downcase}"
    end
    res.match /^([A-Z])/
    res.sub! /^([A-Z])/, "#{$1.downcase}" if $1 != nil
    return res
  end

end
