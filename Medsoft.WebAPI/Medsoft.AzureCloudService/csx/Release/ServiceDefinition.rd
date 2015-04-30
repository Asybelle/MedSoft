<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Medsoft.AzureCloudService" generation="1" functional="0" release="0" Id="26439b5f-9517-41ed-bc74-b481ed860160" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="Medsoft.AzureCloudServiceGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="Medsoft.API:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/LB:Medsoft.API:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/LB:Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/MapCertificate|Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/MapMedsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/MapMedsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/MapMedsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/MapMedsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/MapMedsoft.API:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </maps>
        </aCS>
        <aCS name="Medsoft.APIInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/MapMedsoft.APIInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:Medsoft.API:Endpoint1">
          <toPorts>
            <inPortMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.API/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.API/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.API/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapCertificate|Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.API/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapMedsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.API/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapMedsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.API/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapMedsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.API/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapMedsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.API/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapMedsoft.API:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.API/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </setting>
        </map>
        <map name="MapMedsoft.APIInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.APIInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="Medsoft.API" generation="1" functional="0" release="0" software="C:\Users\Ionica\Desktop\Medsoft.WebAPI\Medsoft.AzureCloudService\csx\Release\roles\Medsoft.API" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/SW:Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Medsoft.API&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Medsoft.API&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.API/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.APIInstances" />
            <sCSPolicyUpdateDomainMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.APIUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.APIFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="Medsoft.APIUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="Medsoft.APIFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="Medsoft.APIInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="61db377d-a3bb-4073-858b-1a125bc073cb" ref="Microsoft.RedDog.Contract\ServiceContract\Medsoft.AzureCloudServiceContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="535b7319-6901-4516-a5ff-9c13bb71b846" ref="Microsoft.RedDog.Contract\Interface\Medsoft.API:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.API:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="128abd76-9127-40f2-bb4c-778e4dcae66e" ref="Microsoft.RedDog.Contract\Interface\Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/Medsoft.AzureCloudService/Medsoft.AzureCloudServiceGroup/Medsoft.API:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>