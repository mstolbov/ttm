module FlashConcern
  def flash_success
    flash[:success] = flash_translate :success
  end

  def flash_error(options = { now: true })
    if options[:now]
      flash.now[:error] = flash_translate :error
    else
      flash[:error] = flash_translate :error
    end
  end

  def flash_notice(options = {})
    key = options[:key] || :notice
    msg = options[:msg] || flash_translate(key)

    if options[:now]
      flash.now[:notice] = msg
    else
      flash[:notice] = msg
    end
  end

  def flash_translate(key)
    scope = [:flash, :controllers]
    scope += params[:controller].split('/')
    scope << params[:action]

    t(key, scope: scope)
  end

end
