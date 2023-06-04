<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_list_datasets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the datasets that you have configured in this Region

### Description

List the datasets that you have configured in this Region. For more
information about datasets, see [Flywheel
overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the *Amazon Comprehend Developer Guide*.

### Usage

    comprehend_list_datasets(FlywheelArn, Filter, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_list_datasets_:_FlywheelArn">FlywheelArn</code></td>
<td><p>The Amazon Resource Number (ARN) of the flywheel.</p></td>
</tr>
<tr class="even">
<td><code id="comprehend_list_datasets_:_Filter">Filter</code></td>
<td><p>Filters the datasets to be returned in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_list_datasets_:_NextToken">NextToken</code></td>
<td><p>Identifies the next page of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_list_datasets_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a response. The default is
100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetPropertiesList = list(
        list(
          DatasetArn = "string",
          DatasetName = "string",
          DatasetType = "TRAIN"|"TEST",
          DatasetS3Uri = "string",
          Description = "string",
          Status = "CREATING"|"COMPLETED"|"FAILED",
          Message = "string",
          NumberOfDocuments = 123,
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_datasets(
      FlywheelArn = "string",
      Filter = list(
        Status = "CREATING"|"COMPLETED"|"FAILED",
        DatasetType = "TRAIN"|"TEST",
        CreationTimeAfter = as.POSIXct(
          "2015-01-01"
        ),
        CreationTimeBefore = as.POSIXct(
          "2015-01-01"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
