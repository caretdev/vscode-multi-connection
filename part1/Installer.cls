Class Part1.Installer
{

XData MyInstall [ XMLNamespace = INSTALLER ]
{
<Manifest>
  <Namespace Name="${NAMESPACE}">

    <Import File="${SOURCESPATH}" Recurse="1"/>
  </Namespace>
</Manifest>
}

ClassMethod doSetup(ByRef pVars, pLogLevel As %Integer = 3, pInstaller As %Installer.Installer, pLogger As %Installer.AbstractLogger) As %Status [ CodeMode = objectgenerator, Internal ]
{
  Quit ##class(%Installer.Manifest).%Generate(%compiledclass, %code, "MyInstall")
}

ClassMethod setup(namespace As %String, src As %String) As %Status
{
  Set vars("NAMESPACE") = namespace
  Set vars("SOURCESPATH") = src
  Quit ..doSetup(.vars)
}

}
