<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_list_models</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a list of all models in the account, including model name and ARN, dataset, and status

### Description

Generates a list of all models in the account, including model name and
ARN, dataset, and status.

### Usage

    lookoutequipment_list_models(NextToken, MaxResults, Status,
      ModelNameBeginsWith, DatasetNameBeginsWith)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_list_models_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token indicating where to continue the
listing of ML models.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_models_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the maximum number of ML models to list.</p></td>
</tr>
<tr class="odd">
<td><code id="lookoutequipment_list_models_:_Status">Status</code></td>
<td><p>The status of the ML model.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_models_:_ModelNameBeginsWith">ModelNameBeginsWith</code></td>
<td><p>The beginning of the name of the ML models being listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_models_:_DatasetNameBeginsWith">DatasetNameBeginsWith</code></td>
<td><p>The beginning of the name of the dataset of the ML models to be
listed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ModelSummaries = list(
        list(
          ModelName = "string",
          ModelArn = "string",
          DatasetName = "string",
          DatasetArn = "string",
          Status = "IN_PROGRESS"|"SUCCESS"|"FAILED",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_models(
      NextToken = "string",
      MaxResults = 123,
      Status = "IN_PROGRESS"|"SUCCESS"|"FAILED",
      ModelNameBeginsWith = "string",
      DatasetNameBeginsWith = "string"
    )
