<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>healthlake_create_fhir_datastore</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Data Store that can ingest and export FHIR formatted data

### Description

Creates a Data Store that can ingest and export FHIR formatted data.

### Usage

    healthlake_create_fhir_datastore(DatastoreName, DatastoreTypeVersion,
      SseConfiguration, PreloadDataConfig, ClientToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="healthlake_create_fhir_datastore_:_DatastoreName">DatastoreName</code></td>
<td><p>The user generated name for the Data Store.</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_create_fhir_datastore_:_DatastoreTypeVersion">DatastoreTypeVersion</code></td>
<td><p>[required] The FHIR version of the Data Store. The only supported
version is R4.</p></td>
</tr>
<tr class="odd">
<td><code
id="healthlake_create_fhir_datastore_:_SseConfiguration">SseConfiguration</code></td>
<td><p>The server-side encryption key configuration for a customer
provided encryption key specified for creating a Data Store.</p></td>
</tr>
<tr class="even">
<td><code
id="healthlake_create_fhir_datastore_:_PreloadDataConfig">PreloadDataConfig</code></td>
<td><p>Optional parameter to preload data upon creation of the Data
Store. Currently, the only supported preloaded data is synthetic data
generated from Synthea.</p></td>
</tr>
<tr class="odd">
<td><code
id="healthlake_create_fhir_datastore_:_ClientToken">ClientToken</code></td>
<td><p>Optional user provided token used for ensuring
idempotency.</p></td>
</tr>
<tr class="even">
<td><code id="healthlake_create_fhir_datastore_:_Tags">Tags</code></td>
<td><p>Resource tags that are applied to a Data Store when it is
created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatastoreId = "string",
      DatastoreArn = "string",
      DatastoreStatus = "CREATING"|"ACTIVE"|"DELETING"|"DELETED",
      DatastoreEndpoint = "string"
    )

### Request syntax

    svc$create_fhir_datastore(
      DatastoreName = "string",
      DatastoreTypeVersion = "R4",
      SseConfiguration = list(
        KmsEncryptionConfig = list(
          CmkType = "CUSTOMER_MANAGED_KMS_KEY"|"AWS_OWNED_KMS_KEY",
          KmsKeyId = "string"
        )
      ),
      PreloadDataConfig = list(
        PreloadDataType = "SYNTHEA"
      ),
      ClientToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
