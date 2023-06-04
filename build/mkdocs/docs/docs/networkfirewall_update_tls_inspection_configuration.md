<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_update_tls_inspection_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the TLS inspection configuration settings for the specified TLS inspection configuration

### Description

Updates the TLS inspection configuration settings for the specified TLS
inspection configuration. You use a TLS inspection configuration by
reference in one or more firewall policies. When you modify a TLS
inspection configuration, you modify all firewall policies that use the
TLS inspection configuration.

To update a TLS inspection configuration, first call
`describe_tls_inspection_configuration` to retrieve the current
TLSInspectionConfiguration object, update the object as needed, and then
provide the updated object to this call.

### Usage

    networkfirewall_update_tls_inspection_configuration(
      TLSInspectionConfigurationArn, TLSInspectionConfigurationName,
      TLSInspectionConfiguration, Description, EncryptionConfiguration,
      UpdateToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_update_tls_inspection_configuration_:_TLSInspectionConfigurationArn">TLSInspectionConfigurationArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the TLS inspection
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_update_tls_inspection_configuration_:_TLSInspectionConfigurationName">TLSInspectionConfigurationName</code></td>
<td><p>The descriptive name of the TLS inspection configuration. You
can't change the name of a TLS inspection configuration after you create
it.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_update_tls_inspection_configuration_:_TLSInspectionConfiguration">TLSInspectionConfiguration</code></td>
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
<tr class="even">
<td><code
id="networkfirewall_update_tls_inspection_configuration_:_Description">Description</code></td>
<td><p>A description of the TLS inspection configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_update_tls_inspection_configuration_:_EncryptionConfiguration">EncryptionConfiguration</code></td>
<td><p>A complex type that contains the Amazon Web Services KMS
encryption configuration settings for your TLS inspection
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_update_tls_inspection_configuration_:_UpdateToken">UpdateToken</code></td>
<td><p>[required] A token used for optimistic locking. Network Firewall
returns a token to your requests that access the TLS inspection
configuration. The token marks the state of the TLS inspection
configuration resource at the time of the request.</p>
<p>To make changes to the TLS inspection configuration, you provide the
token in your request. Network Firewall uses the token to ensure that
the TLS inspection configuration hasn't changed since you last retrieved
it. If it has changed, the operation fails with an
<code>InvalidTokenException</code>. If this happens, retrieve the TLS
inspection configuration again to get a current copy of it with a
current token. Reapply your changes as needed, then try the operation
again using the new token.</p></td>
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

    svc$update_tls_inspection_configuration(
      TLSInspectionConfigurationArn = "string",
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
      EncryptionConfiguration = list(
        KeyId = "string",
        Type = "CUSTOMER_KMS"|"AWS_OWNED_KMS_KEY"
      ),
      UpdateToken = "string"
    )
