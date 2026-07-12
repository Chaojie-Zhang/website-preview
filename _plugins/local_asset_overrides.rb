# Site-local static files win over plugin-injected assets at the same path.
# The al-* plugin AssetsGenerators append their bundled files to
# site.static_files after Jekyll has read the site's own files, so without
# this the plugin copy is written last and silently overwrites the local
# override (e.g. assets/al_math/js/mathjax-setup.js).
Jekyll::Hooks.register :site, :pre_render do |site|
  site.static_files.group_by(&:relative_path).each_value do |files|
    next if files.size < 2

    locals = files.select { |f| f.instance_of?(Jekyll::StaticFile) }
    next if locals.empty?

    (files - locals).each { |f| site.static_files.delete(f) }
  end
end
