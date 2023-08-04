module FontelloRailsConverter
  class Railtie < Rails::Railtie

    initializer "fontello_rails_converter.setup" do |app|
      if app.config.respond_to? (:assets)
        app.config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')
        %w(eot svg ttf woff woff2).each do |ext|
          app.config.assets.precompile << "font-awesome/fontawesome-webfont.#{ext}"
        end
      end
    end

  end
end
