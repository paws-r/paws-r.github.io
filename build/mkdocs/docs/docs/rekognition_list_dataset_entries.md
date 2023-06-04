<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_list_dataset_entries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the entries (images) within a dataset

### Description

Lists the entries (images) within a dataset. An entry is a JSON Line
that contains the information for a single image, including the image
location, assigned labels, and object location bounding boxes. For more
information, see [Creating a manifest
file](https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/).

JSON Lines in the response include information about non-terminal errors
found in the dataset. Non terminal errors are reported in `errors` lists
within each JSON Line. The same information is reported in the training
and testing validation result manifests that Amazon Rekognition Custom
Labels creates during model training.

You can filter the response in variety of ways, such as choosing which
labels to return and returning JSON Lines created after a specific date.

This operation requires permissions to perform the
`rekognition:ListDatasetEntries` action.

### Usage

    rekognition_list_dataset_entries(DatasetArn, ContainsLabels, Labeled,
      SourceRefContains, HasErrors, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_list_dataset_entries_:_DatasetArn">DatasetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the dataset that
you want to use.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_list_dataset_entries_:_ContainsLabels">ContainsLabels</code></td>
<td><p>Specifies a label filter for the response. The response includes
an entry only if one or more of the labels in
<code>ContainsLabels</code> exist in the entry.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_list_dataset_entries_:_Labeled">Labeled</code></td>
<td><p>Specify <code>true</code> to get only the JSON Lines where the
image is labeled. Specify <code>false</code> to get only the JSON Lines
where the image isn't labeled. If you don't specify
<code>Labeled</code>, <code>list_dataset_entries</code> returns JSON
Lines for labeled and unlabeled images.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_list_dataset_entries_:_SourceRefContains">SourceRefContains</code></td>
<td><p>If specified, <code>list_dataset_entries</code> only returns JSON
Lines where the value of <code>SourceRefContains</code> is part of the
<code>source-ref</code> field. The <code>source-ref</code> field
contains the Amazon S3 location of the image. You can use
<code>SouceRefContains</code> for tasks such as getting the JSON Line
for a single image, or gettting JSON Lines for all images within a
specific folder.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_list_dataset_entries_:_HasErrors">HasErrors</code></td>
<td><p>Specifies an error filter for the response. Specify
<code>True</code> to only include entries that have errors.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_list_dataset_entries_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
results to retrieve), Amazon Rekognition Custom Labels returns a
pagination token in the response. You can use this pagination token to
retrieve the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_list_dataset_entries_:_MaxResults">MaxResults</code></td>
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
      DatasetEntries = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_dataset_entries(
      DatasetArn = "string",
      ContainsLabels = list(
        "string"
      ),
      Labeled = TRUE|FALSE,
      SourceRefContains = "string",
      HasErrors = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )
