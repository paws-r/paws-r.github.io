<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_app_image_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the AppImageConfigs in your account and their properties

### Description

Lists the AppImageConfigs in your account and their properties. The list
can be filtered by creation time or modified time, and whether the
AppImageConfig name contains a specified string.

### Usage

    sagemaker_list_app_image_configs(MaxResults, NextToken, NameContains,
      CreationTimeBefore, CreationTimeAfter, ModifiedTimeBefore,
      ModifiedTimeAfter, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_app_image_configs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of AppImageConfigs to return in the response.
The default value is 10.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_app_image_configs_:_NextToken">NextToken</code></td>
<td><p>If the previous call to <code>list_images</code> didn't return
the full set of AppImageConfigs, the call returns a token for getting
the next set of AppImageConfigs.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_app_image_configs_:_NameContains">NameContains</code></td>
<td><p>A filter that returns only AppImageConfigs whose name contains
the specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_app_image_configs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only AppImageConfigs created on or before
the specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_app_image_configs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only AppImageConfigs created on or after
the specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_app_image_configs_:_ModifiedTimeBefore">ModifiedTimeBefore</code></td>
<td><p>A filter that returns only AppImageConfigs modified on or before
the specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_app_image_configs_:_ModifiedTimeAfter">ModifiedTimeAfter</code></td>
<td><p>A filter that returns only AppImageConfigs modified on or after
the specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_app_image_configs_:_SortBy">SortBy</code></td>
<td><p>The property used to sort results. The default value is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_app_image_configs_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. The default value is
<code>Descending</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      AppImageConfigs = list(
        list(
          AppImageConfigArn = "string",
          AppImageConfigName = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          KernelGatewayImageConfig = list(
            KernelSpecs = list(
              list(
                Name = "string",
                DisplayName = "string"
              )
            ),
            FileSystemConfig = list(
              MountPath = "string",
              DefaultUid = 123,
              DefaultGid = 123
            )
          )
        )
      )
    )

### Request syntax

    svc$list_app_image_configs(
      MaxResults = 123,
      NextToken = "string",
      NameContains = "string",
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
