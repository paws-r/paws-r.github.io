<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_create_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a container for a collection of data being ingested for analysis

### Description

Creates a container for a collection of data being ingested for
analysis. The dataset contains the metadata describing where the data is
and what the data actually looks like. In other words, it contains the
location of the data source, the data schema, and other information. A
dataset also contains any tags associated with the ingested data.

### Usage

    lookoutequipment_create_dataset(DatasetName, DatasetSchema,
      ServerSideKmsKeyId, ClientToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_create_dataset_:_DatasetName">DatasetName</code></td>
<td><p>[required] The name of the dataset being created.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_dataset_:_DatasetSchema">DatasetSchema</code></td>
<td><p>A JSON description of the data that is in each time series
dataset, including names, column names, and data types.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_dataset_:_ServerSideKmsKeyId">ServerSideKmsKeyId</code></td>
<td><p>Provides the identifier of the KMS key used to encrypt dataset
data by Amazon Lookout for Equipment.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_dataset_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique identifier for the request. If you do not set
the client request token, Amazon Lookout for Equipment generates
one.</p></td>
</tr>
<tr class="odd">
<td><code id="lookoutequipment_create_dataset_:_Tags">Tags</code></td>
<td><p>Any tags associated with the ingested data described in the
dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetName = "string",
      DatasetArn = "string",
      Status = "CREATED"|"INGESTION_IN_PROGRESS"|"ACTIVE"
    )

### Request syntax

    svc$create_dataset(
      DatasetName = "string",
      DatasetSchema = list(
        InlineDataSchema = "string"
      ),
      ServerSideKmsKeyId = "string",
      ClientToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
