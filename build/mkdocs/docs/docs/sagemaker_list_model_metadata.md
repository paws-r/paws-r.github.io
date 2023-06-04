<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_model_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the domain, framework, task, and model name of standard machine learning models found in common model zoos

### Description

Lists the domain, framework, task, and model name of standard machine
learning models found in common model zoos.

### Usage

    sagemaker_list_model_metadata(SearchExpression, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_model_metadata_:_SearchExpression">SearchExpression</code></td>
<td><p>One or more filters that searches for the specified resource or
resources in a search. All resource objects that satisfy the
expression's condition are included in the search results. Specify the
Framework, FrameworkVersion, Domain or Task to filter supported. Filter
names and values are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_metadata_:_NextToken">NextToken</code></td>
<td><p>If the response to a previous
<code>ListModelMetadataResponse</code> request was truncated, the
response includes a NextToken. To retrieve the next set of model
metadata, use the token in the next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_metadata_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of models to return in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelMetadataSummaries = list(
        list(
          Domain = "string",
          Framework = "string",
          Task = "string",
          Model = "string",
          FrameworkVersion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_model_metadata(
      SearchExpression = list(
        Filters = list(
          list(
            Name = "Domain"|"Framework"|"Task"|"FrameworkVersion",
            Value = "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
