<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_list_studio_components</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the StudioComponents in a studio

### Description

Lists the `StudioComponents` in a studio.

### Usage

    nimblestudio_list_studio_components(maxResults, nextToken, states,
      studioId, types)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_list_studio_components_:_maxResults">maxResults</code></td>
<td><p>The max number of results to return in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_list_studio_components_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_list_studio_components_:_states">states</code></td>
<td><p>Filters the request to studio components that are in one of the
given states.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_list_studio_components_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_list_studio_components_:_types">types</code></td>
<td><p>Filters the request to studio components that are of one of the
given types.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      studioComponents = list(
        list(
          arn = "string",
          configuration = list(
            activeDirectoryConfiguration = list(
              computerAttributes = list(
                list(
                  name = "string",
                  value = "string"
                )
              ),
              directoryId = "string",
              organizationalUnitDistinguishedName = "string"
            ),
            computeFarmConfiguration = list(
              activeDirectoryUser = "string",
              endpoint = "string"
            ),
            licenseServiceConfiguration = list(
              endpoint = "string"
            ),
            sharedFileSystemConfiguration = list(
              endpoint = "string",
              fileSystemId = "string",
              linuxMountPoint = "string",
              shareName = "string",
              windowsMountDrive = "string"
            )
          ),
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          createdBy = "string",
          description = "string",
          ec2SecurityGroupIds = list(
            "string"
          ),
          initializationScripts = list(
            list(
              launchProfileProtocolVersion = "string",
              platform = "LINUX"|"WINDOWS",
              runContext = "SYSTEM_INITIALIZATION"|"USER_INITIALIZATION",
              script = "string"
            )
          ),
          name = "string",
          runtimeRoleArn = "string",
          scriptParameters = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          secureInitializationRoleArn = "string",
          state = "CREATE_IN_PROGRESS"|"READY"|"UPDATE_IN_PROGRESS"|"DELETE_IN_PROGRESS"|"DELETED"|"DELETE_FAILED"|"CREATE_FAILED"|"UPDATE_FAILED",
          statusCode = "ACTIVE_DIRECTORY_ALREADY_EXISTS"|"STUDIO_COMPONENT_CREATED"|"STUDIO_COMPONENT_UPDATED"|"STUDIO_COMPONENT_DELETED"|"ENCRYPTION_KEY_ACCESS_DENIED"|"ENCRYPTION_KEY_NOT_FOUND"|"STUDIO_COMPONENT_CREATE_IN_PROGRESS"|"STUDIO_COMPONENT_UPDATE_IN_PROGRESS"|"STUDIO_COMPONENT_DELETE_IN_PROGRESS"|"INTERNAL_ERROR",
          statusMessage = "string",
          studioComponentId = "string",
          subtype = "AWS_MANAGED_MICROSOFT_AD"|"AMAZON_FSX_FOR_WINDOWS"|"AMAZON_FSX_FOR_LUSTRE"|"CUSTOM",
          tags = list(
            "string"
          ),
          type = "ACTIVE_DIRECTORY"|"SHARED_FILE_SYSTEM"|"COMPUTE_FARM"|"LICENSE_SERVICE"|"CUSTOM",
          updatedAt = as.POSIXct(
            "2015-01-01"
          ),
          updatedBy = "string"
        )
      )
    )

### Request syntax

    svc$list_studio_components(
      maxResults = 123,
      nextToken = "string",
      states = list(
        "CREATE_IN_PROGRESS"|"READY"|"UPDATE_IN_PROGRESS"|"DELETE_IN_PROGRESS"|"DELETED"|"DELETE_FAILED"|"CREATE_FAILED"|"UPDATE_FAILED"
      ),
      studioId = "string",
      types = list(
        "ACTIVE_DIRECTORY"|"SHARED_FILE_SYSTEM"|"COMPUTE_FARM"|"LICENSE_SERVICE"|"CUSTOM"
      )
    )
