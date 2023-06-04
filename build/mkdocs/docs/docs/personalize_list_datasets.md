<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_datasets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of datasets contained in the given dataset group

### Description

Returns the list of datasets contained in the given dataset group. The
response provides the properties for each dataset, including the Amazon
Resource Name (ARN). For more information on datasets, see
`create_dataset`.

### Usage

    personalize_list_datasets(datasetGroupArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_datasets_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the dataset group that contains
the datasets to list.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_datasets_:_nextToken">nextToken</code></td>
<td><p>A token returned from the previous call to
<code>list_dataset_import_jobs</code> for getting the next set of
dataset import jobs (if they exist).</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_list_datasets_:_maxResults">maxResults</code></td>
<td><p>The maximum number of datasets to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasets = list(
        list(
          name = "string",
          datasetArn = "string",
          datasetType = "string",
          status = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_datasets(
      datasetGroupArn = "string",
      nextToken = "string",
      maxResults = 123
    )
