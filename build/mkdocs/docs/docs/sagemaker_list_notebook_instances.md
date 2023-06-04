<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_notebook_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the SageMaker notebook instances in the requester's account in an Amazon Web Services Region

### Description

Returns a list of the SageMaker notebook instances in the requester's
account in an Amazon Web Services Region.

### Usage

    sagemaker_list_notebook_instances(NextToken, MaxResults, SortBy,
      SortOrder, NameContains, CreationTimeBefore, CreationTimeAfter,
      LastModifiedTimeBefore, LastModifiedTimeAfter, StatusEquals,
      NotebookInstanceLifecycleConfigNameContains,
      DefaultCodeRepositoryContains, AdditionalCodeRepositoryEquals)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_notebook_instances_:_NextToken">NextToken</code></td>
<td><p>If the previous call to the <code>list_notebook_instances</code>
is truncated, the response includes a <code>NextToken</code>. You can
use this token in your subsequent <code>list_notebook_instances</code>
request to fetch the next set of notebook instances.</p>
<p>You might specify a filter or a sort order in your request. When
response is truncated, you must use the same values for the filer and
sort order in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_notebook_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of notebook instances to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_notebook_instances_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>Name</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_notebook_instances_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_notebook_instances_:_NameContains">NameContains</code></td>
<td><p>A string in the notebook instances' name. This filter returns
only notebook instances whose name contains the specified
string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_notebook_instances_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only notebook instances that were created
before the specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_notebook_instances_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only notebook instances that were created
after the specified time (timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_notebook_instances_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>A filter that returns only notebook instances that were modified
before the specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_notebook_instances_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>A filter that returns only notebook instances that were modified
after the specified time (timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_notebook_instances_:_StatusEquals">StatusEquals</code></td>
<td><p>A filter that returns only notebook instances with the specified
status.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_notebook_instances_:_NotebookInstanceLifecycleConfigNameContains">NotebookInstanceLifecycleConfigNameContains</code></td>
<td><p>A string in the name of a notebook instances lifecycle
configuration associated with this notebook instance. This filter
returns only notebook instances associated with a lifecycle
configuration with a name that contains the specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_notebook_instances_:_DefaultCodeRepositoryContains">DefaultCodeRepositoryContains</code></td>
<td><p>A string in the name or URL of a Git repository associated with
this notebook instance. This filter returns only notebook instances
associated with a git repository with a name that contains the specified
string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_notebook_instances_:_AdditionalCodeRepositoryEquals">AdditionalCodeRepositoryEquals</code></td>
<td><p>A filter that returns only notebook instances with associated
with the specified git repository.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      NotebookInstances = list(
        list(
          NotebookInstanceName = "string",
          NotebookInstanceArn = "string",
          NotebookInstanceStatus = "Pending"|"InService"|"Stopping"|"Stopped"|"Failed"|"Deleting"|"Updating",
          Url = "string",
          InstanceType = "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          NotebookInstanceLifecycleConfigName = "string",
          DefaultCodeRepository = "string",
          AdditionalCodeRepositories = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_notebook_instances(
      NextToken = "string",
      MaxResults = 123,
      SortBy = "Name"|"CreationTime"|"Status",
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
      ),
      StatusEquals = "Pending"|"InService"|"Stopping"|"Stopped"|"Failed"|"Deleting"|"Updating",
      NotebookInstanceLifecycleConfigNameContains = "string",
      DefaultCodeRepositoryContains = "string",
      AdditionalCodeRepositoryEquals = "string"
    )
