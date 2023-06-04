<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_list_dataset_labels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the labels in a dataset

### Description

Lists the labels in a dataset. Amazon Rekognition Custom Labels uses
labels to describe images. For more information, see [Labeling
images](https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/md-labeling-images.html).

Lists the labels in a dataset. Amazon Rekognition Custom Labels uses
labels to describe images. For more information, see Labeling images in
the *Amazon Rekognition Custom Labels Developer Guide*.

### Usage

    rekognition_list_dataset_labels(DatasetArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_list_dataset_labels_:_DatasetArn">DatasetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset that you
want to use.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_list_dataset_labels_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
results to retrieve), Amazon Rekognition Custom Labels returns a
pagination token in the response. You can use this pagination token to
retrieve the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_list_dataset_labels_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per paginated call. The
largest value you can specify is 100. If you specify a value greater
than 100, a ValidationException error occurs. The default value is
100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetLabelDescriptions = list(
        list(
          LabelName = "string",
          LabelStats = list(
            EntryCount = 123,
            BoundingBoxCount = 123
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_dataset_labels(
      DatasetArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
