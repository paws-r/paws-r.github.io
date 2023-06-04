<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_create_tls_inspection_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Network Firewall TLS inspection configuration

### Description

Creates an Network Firewall TLS inspection configuration. A TLS
inspection configuration contains the Certificate Manager certificate
references that Network Firewall uses to decrypt and re-encrypt inbound
traffic.

After you create a TLS inspection configuration, you associate it with a
firewall policy.

To update the settings for a TLS inspection configuration, use
`update_tls_inspection_configuration`.

To manage a TLS inspection configuration's tags, use the standard Amazon
Web Services resource tagging operations, `list_tags_for_resource`,
`tag_resource`, and `untag_resource`.

To retrieve information about TLS inspection configurations, use
`list_tls_inspection_configurations` and
`describe_tls_inspection_configuration`.

For more information about TLS inspection configurations, see
[Decrypting SSL/TLS traffic with TLS inspection
configurations](https://docs.aws.amazon.com/network-firewall/latest/developerguide/)
in the *Network Firewall Developer Guide*.

### Usage

    networkfirewall_create_tls_inspection_configuration(
      TLSInspectionConfigurationName, TLSInspectionConfiguration, Description,
      Tags, EncryptionConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_create_tls_inspection_configuration_:_TLSInspectionConfigurationName">TLSInspectionConfigurationName</code></td>
<td><p>[required] The descriptive name of the TLS inspection
configuration. You can't change the name of a TLS inspection
configuration after you create it.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_tls_inspection_configuration_:_TLSInspectionConfiguration">TLSInspectionConfiguration</code></td>
<td><p>[required] The object that defines a TLS inspection
configuration. This, along with TLSInspectionConfigurationResponse,
define the TLS inspection configuration. You can retrieve all objects
for a TLS inspection configuration by calling
<code>describe_tls_inspection_configuration</code>.</p>
<p>Network Firewall uses a TLS inspection configuration to decrypt
traffic. Network Firewall re-encrypts the traffic before sending it to
its destination.</p>
<p>To use a TLS inspection configuration, you add it to a Network
Firewall firewall policy, then you apply the firewall policy to a
firewall. Network Firewall acts as a proxy service to decrypt and
inspect inbound traffic. You can reference a TLS inspection
configuration from more than one firewall policy, and you can use a
firewall policy in more than one firewall. For more information about
using TLS inspection configurations, see <a
href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/">Decrypting
SSL/TLS traffic with TLS inspection configurations</a> in the
<em>Network Firewall Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_create_tls_inspection_configuration_:_Description">Description</code></td>
<td><p>A description of the TLS inspection configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_create_tls_inspection_configuration_:_Tags">Tags</code></td>
<td><p>The key:value pairs to associate with the resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_create_tls_inspection_configuration_:_EncryptionConfiguration">EncryptionConfiguration</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpdateToken = "string",
      TLSInspectionConfigurationResponse = list(
        TLSInspectionConfigurationArn = "string",
        TLSInspectionConfigurationName = "string",
        TLSInspectionConfigurationId = "string",
        TLSInspectionConfigurationStatus = "ACTIVE"|"DELETING",
        Description = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        NumberOfAssociations = 123,
        EncryptionConfiguration = list(
          KeyId = "string",
          Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
        ),
        Certificates = list(
          list(
            CertificateArn = "string",
            CertificateSerial = "string",
            Status = "string",
            StatusMessage = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_tls_inspection_configuration(
      TLSInspectionConfigurationName = "string",
      TLSInspectionConfiguration = list(
        ServerCertificateConfigurations = list(
          list(
            ServerCertificates = list(
              list(
                ResourceArn = "string"
              )
            ),
            Scopes = list(
              list(
                Sources = list(
                  list(
                    AddressDefinition = "string"
                  )
                ),
                Destinations = list(
                  list(
                    AddressDefinition = "string"
                  )
                ),
                SourcePorts = list(
                  list(
                    FromPort = 123,
                    ToPort = 123
                  )
                ),
                DestinationPorts = list(
                  list(
                    FromPort = 123,
                    ToPort = 123
                  )
                ),
                Protocols = list(
                  123
                )
              )
            )
          )
        )
      ),
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      EncryptionConfiguration = list(
        KeyId = "string",
        Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
      )
    )
