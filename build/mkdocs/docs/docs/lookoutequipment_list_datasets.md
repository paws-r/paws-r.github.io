<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_list_datasets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all datasets currently available in your account, filtering on the dataset name

### Description

Lists all datasets currently available in your account, filtering on the
dataset name.

### Usage

    lookoutequipment_list_datasets(NextToken, MaxResults,
      DatasetNameBeginsWith)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_list_datasets_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token indicating where to continue the
listing of datasets.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_datasets_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the maximum number of datasets to list.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_datasets_:_DatasetNameBeginsWith">DatasetNameBeginsWith</code></td>
<td><p>The beginning of the name of the datasets to be listed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      DatasetSummaries = list(
        list(
          DatasetName = "string",
          DatasetArn = "string",
          Status = "CREATED"|"INGESTION_IN_PROGRESS"|"ACTIVE",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_datasets(
      NextToken = "string",
      MaxResults = 123,
      DatasetNameBeginsWith = "string"
    )
