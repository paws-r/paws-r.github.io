<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_hsm_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an HSM configuration that contains the information required by an Amazon Redshift cluster to store and use database encryption keys in a Hardware Security Module (HSM)

### Description

Creates an HSM configuration that contains the information required by
an Amazon Redshift cluster to store and use database encryption keys in
a Hardware Security Module (HSM). After creating the HSM configuration,
you can specify it as a parameter when creating a cluster. The cluster
will then store its encryption keys in the HSM.

In addition to creating an HSM configuration, you must also create an
HSM client certificate. For more information, go to [Hardware Security
Modules](https://docs.aws.amazon.com/redshift/latest/mgmt/) in the
Amazon Redshift Cluster Management Guide.

### Usage

    redshift_create_hsm_configuration(HsmConfigurationIdentifier,
      Description, HsmIpAddress, HsmPartitionName, HsmPartitionPassword,
      HsmServerPublicCertificate, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_hsm_configuration_:_HsmConfigurationIdentifier">HsmConfigurationIdentifier</code></td>
<td><p>[required] The identifier to be assigned to the new Amazon
Redshift HSM configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_hsm_configuration_:_Description">Description</code></td>
<td><p>[required] A text description of the HSM configuration to be
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_hsm_configuration_:_HsmIpAddress">HsmIpAddress</code></td>
<td><p>[required] The IP address that the Amazon Redshift cluster must
use to access the HSM.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_hsm_configuration_:_HsmPartitionName">HsmPartitionName</code></td>
<td><p>[required] The name of the partition in the HSM where the Amazon
Redshift clusters will store their database encryption keys.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_hsm_configuration_:_HsmPartitionPassword">HsmPartitionPassword</code></td>
<td><p>[required] The password required to access the HSM
partition.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_hsm_configuration_:_HsmServerPublicCertificate">HsmServerPublicCertificate</code></td>
<td><p>[required] The HSMs public certificate file. When using Cloud
HSM, the file name is server.pem.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_create_hsm_configuration_:_Tags">Tags</code></td>
<td><p>A list of tag instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HsmConfiguration = list(
        HsmConfigurationIdentifier = "string",
        Description = "string",
        HsmIpAddress = "string",
        HsmPartitionName = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_hsm_configuration(
      HsmConfigurationIdentifier = "string",
      Description = "string",
      HsmIpAddress = "string",
      HsmPartitionName = "string",
      HsmPartitionPassword = "string",
      HsmServerPublicCertificate = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
