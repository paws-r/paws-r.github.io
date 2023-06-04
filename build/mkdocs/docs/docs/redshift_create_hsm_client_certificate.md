<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_hsm_client_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to the client's HSM in order to store and retrieve the keys used to encrypt the cluster databases

### Description

Creates an HSM client certificate that an Amazon Redshift cluster will
use to connect to the client's HSM in order to store and retrieve the
keys used to encrypt the cluster databases.

The command returns a public key, which you must store in the HSM. In
addition to creating the HSM certificate, you must create an Amazon
Redshift HSM configuration that provides a cluster the information
needed to store and use encryption keys in the HSM. For more
information, go to [Hardware Security
Modules](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html#working-with-HSM)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_create_hsm_client_certificate(HsmClientCertificateIdentifier,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_hsm_client_certificate_:_HsmClientCertificateIdentifier">HsmClientCertificateIdentifier</code></td>
<td><p>[required] The identifier to be assigned to the new HSM client
certificate that the cluster will use to connect to the HSM to use the
database encryption keys.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_hsm_client_certificate_:_Tags">Tags</code></td>
<td><p>A list of tag instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HsmClientCertificate = list(
        HsmClientCertificateIdentifier = "string",
        HsmClientCertificatePublicKey = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_hsm_client_certificate(
      HsmClientCertificateIdentifier = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
