<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_notebook_instance_lifecycle_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists notebook instance lifestyle configurations created with the CreateNotebookInstanceLifecycleConfig API

### Description

Lists notebook instance lifestyle configurations created with the
`create_notebook_instance_lifecycle_config` API.

### Usage

    sagemaker_list_notebook_instance_lifecycle_configs(NextToken,
      MaxResults, SortBy, SortOrder, NameContains, CreationTimeBefore,
      CreationTimeAfter, LastModifiedTimeBefore, LastModifiedTimeAfter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_notebook_instance_lifecycle_configs_:_NextToken">NextToken</code></td>
<td><p>If the result of a
<code>list_notebook_instance_lifecycle_configs</code> request was
truncated, the response includes a <code>NextToken</code>. To get the
next set of lifecycle configurations, use the token in the next
request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_notebook_instance_lifecycle_configs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of lifecycle configurations to return in the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_notebook_instance_lifecycle_configs_:_SortBy">SortBy</code></td>
<td><p>Sorts the list of results. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_notebook_instance_lifecycle_configs_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_notebook_instance_lifecycle_configs_:_NameContains">NameContains</code></td>
<td><p>A string in the lifecycle configuration name. This filter returns
only lifecycle configurations whose name contains the specified
string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_notebook_instance_lifecycle_configs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only lifecycle configurations that were
created before the specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_notebook_instance_lifecycle_configs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only lifecycle configurations that were
created after the specified time (timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_notebook_instance_lifecycle_configs_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only lifecycle configurations that were
modified before the specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_notebook_instance_lifecycle_configs_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only lifecycle configurations that were
modified after the specified time (timestamp).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      NotebookInstanceLifecycleConfigs = list(
        list(
          NotebookInstanceLifecycleConfigName = "string",
          NotebookInstanceLifecycleConfigArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_notebook_instance_lifecycle_configs(
      NextToken = "string",
      MaxResults = 123,
      SortBy = "Name"|"CreationTime"|"LastModifiedTime",
      SortOrder = "Ascending"|"Descending",
      NameContains = "string",
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeAfter = as.POSIXct(
        "2015-01-01"
      )
    )
