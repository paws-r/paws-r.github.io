<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_model_packages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the model packages that have been created

### Description

Lists the model packages that have been created.

### Usage

    sagemaker_list_model_packages(CreationTimeAfter, CreationTimeBefore,
      MaxResults, NameContains, ModelApprovalStatus, ModelPackageGroupName,
      ModelPackageType, NextToken, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_model_packages_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only model packages created after the
specified time (timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_packages_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only model packages created before the
specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_packages_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of model packages to return in the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_packages_:_NameContains">NameContains</code></td>
<td><p>A string in the model package name. This filter returns only
model packages whose name contains the specified string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_packages_:_ModelApprovalStatus">ModelApprovalStatus</code></td>
<td><p>A filter that returns only the model packages with the specified
approval status.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_packages_:_ModelPackageGroupName">ModelPackageGroupName</code></td>
<td><p>A filter that returns only model versions that belong to the
specified model group.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_packages_:_ModelPackageType">ModelPackageType</code></td>
<td><p>A filter that returns only the model packages of the specified
type. This can be one of the following values.</p>
<ul>
<li><p><code>UNVERSIONED</code> - List only unversioined models. This is
the default value if no <code>ModelPackageType</code> is
specified.</p></li>
<li><p><code>VERSIONED</code> - List only versioned models.</p></li>
<li><p><code>BOTH</code> - List both versioned and unversioned
models.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_packages_:_NextToken">NextToken</code></td>
<td><p>If the response to a previous <code>list_model_packages</code>
request was truncated, the response includes a <code>NextToken</code>.
To retrieve the next set of model packages, use the token in the next
request.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_model_packages_:_SortBy">SortBy</code></td>
<td><p>The parameter by which to sort the results. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_packages_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for the results. The default is
<code>Ascending</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelPackageSummaryList = list(
        list(
          ModelPackageName = "string",
          ModelPackageGroupName = "string",
          ModelPackageVersion = 123,
          ModelPackageArn = "string",
          ModelPackageDescription = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          ModelPackageStatus = "Pending"|"InProgress"|"Completed"|"Failed"|"Deleting",
          ModelApprovalStatus = "Approved"|"Rejected"|"PendingManualApproval"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_model_packages(
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      NameContains = "string",
      ModelApprovalStatus = "Approved"|"Rejected"|"PendingManualApproval",
      ModelPackageGroupName = "string",
      ModelPackageType = "Versioned"|"Unversioned"|"Both",
      NextToken = "string",
      SortBy = "Name"|"CreationTime",
      SortOrder = "Ascending"|"Descending"
    )
