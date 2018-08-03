- download vs_exterprise.exe (to create layout)
- create layout (or use from cache)

.\vs_enterprise.exe --layout <location> `
--add Microsoft.VisualStudio.Workload.NetWeb `
--add Component.Github.VisualStudio `
--add Microsoft.VisualStudio.Workload.NetCoreTools `
--add Microsoft.VisualStudio.Workload.Node `
--includeOptional `
--lang en-us

- install from layout
<location>\vs_enterprise.exe --add Microsoft.VisualStudio.Workload.NetWeb --add Component.Github.VisualStudio --includeOptional
