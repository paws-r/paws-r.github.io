<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_describe_tls_inspection_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the data objects for the specified TLS inspection configuration

### Description

Returns the data objects for the specified TLS inspection configuration.

### Usage

    networkfirewall_describe_tls_inspection_configuration(
      TLSInspectionConfigurationArn, TLSInspectionConfigurationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_describe_tls_inspection_configuration_:_TLSInspectionConfigurationArn">TLSInspectionConfigurationArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the TLS inspection
configuration.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_describe_tls_inspection_configuration_:_TLSInspectionConfigurationName">TLSInspectionConfigurationName</code></td>
<td><p>The descriptive name of the TLS inspection configuration. You
can't change the name of a TLS inspection configuration after you create
it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpdateToken = "string",
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

    svc$describe_tls_inspection_configuration(
      TLSInspectionConfigurationArn = "string",
      TLSInspectionConfigurationName = "string"
    )
