<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_studio_lifecycle_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the Studio Lifecycle Configurations in your Amazon Web Services Account

### Description

Lists the Studio Lifecycle Configurations in your Amazon Web Services
Account.

### Usage

    sagemaker_list_studio_lifecycle_configs(MaxResults, NextToken,
      NameContains, AppTypeEquals, CreationTimeBefore, CreationTimeAfter,
      ModifiedTimeBefore, ModifiedTimeAfter, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_studio_lifecycle_configs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of Studio Lifecycle Configurations to return
in the response. The default value is 10.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_studio_lifecycle_configs_:_NextToken">NextToken</code></td>
<td><p>If the previous call to ListStudioLifecycleConfigs didn't return
the full set of Lifecycle Configurations, the call returns a token for
getting the next set of Lifecycle Configurations.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_studio_lifecycle_configs_:_NameContains">NameContains</code></td>
<td><p>A string in the Lifecycle Configuration name. This filter returns
only Lifecycle Configurations whose name contains the specified
string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_studio_lifecycle_configs_:_AppTypeEquals">AppTypeEquals</code></td>
<td><p>A parameter to search for the App Type to which the Lifecycle
Configuration is attached.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_studio_lifecycle_configs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only Lifecycle Configurations created on or
before the specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_studio_lifecycle_configs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only Lifecycle Configurations created on or
after the specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_studio_lifecycle_configs_:_ModifiedTimeBefore">ModifiedTimeBefore</code></td>
<td><p>A filter that returns only Lifecycle Configurations modified
before the specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_studio_lifecycle_configs_:_ModifiedTimeAfter">ModifiedTimeAfter</code></td>
<td><p>A filter that returns only Lifecycle Configurations modified
after the specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_studio_lifecycle_configs_:_SortBy">SortBy</code></td>
<td><p>The property used to sort results. The default value is
CreationTime.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_studio_lifecycle_configs_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. The default value is Descending.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      StudioLifecycleConfigs = list(
        list(
          StudioLifecycleConfigArn = "string",
          StudioLifecycleConfigName = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          StudioLifecycleConfigAppType = "JupyterServer"|"KernelGateway"
        )
      )
    )

### Request syntax

    svc$list_studio_lifecycle_configs(
      MaxResults = 123,
      NextToken = "string",
      NameContains = "string",
      AppTypeEquals = "JupyterServer"|"KernelGateway",
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      ModifiedTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      ModifiedTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      SortBy = "CreationTime"|"LastModifiedTime"|"Name",
      SortOrder = "Ascending"|"Descending"
    )
