<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>healthlake_describe_fhir_datastore</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the properties associated with the FHIR Data Store, including the Data Store ID, Data Store ARN, Data Store name, Data Store status, created at, Data Store type version, and Data Store endpoint

### Description

Gets the properties associated with the FHIR Data Store, including the
Data Store ID, Data Store ARN, Data Store name, Data Store status,
created at, Data Store type version, and Data Store endpoint.

### Usage

    healthlake_describe_fhir_datastore(DatastoreId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="healthlake_describe_fhir_datastore_:_DatastoreId">DatastoreId</code></td>
<td><p>The AWS-generated Data Store id. This is part of the
‘CreateFHIRDatastore’ output.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatastoreProperties = list(
        DatastoreId = "string",
        DatastoreArn = "string",
        DatastoreName = "string",
        DatastoreStatus = "CREATING"|"ACTIVE"|"DELETING"|"DELETED",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        DatastoreTypeVersion = "R4",
        DatastoreEndpoint = "string",
        SseConfiguration = list(
          KmsEncryptionConfig = list(
            CmkType = "CUSTOMER_MANAGED_KMS_KEY"|"AWS_OWNED_KMS_KEY",
            KmsKeyId = "string"
          )
        ),
        PreloadDataConfig = list(
          PreloadDataType = "SYNTHEA"
        )
      )
    )

### Request syntax

    svc$describe_fhir_datastore(
      DatastoreId = "string"
    )
