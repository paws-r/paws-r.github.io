<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_delete_studio_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a studio component resource

### Description

Deletes a studio component resource.

### Usage

    nimblestudio_delete_studio_component(clientToken, studioComponentId,
      studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_delete_studio_component_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_delete_studio_component_:_studioComponentId">studioComponentId</code></td>
<td><p>[required] The studio component ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_delete_studio_component_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      studioComponent = list(
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

### Request syntax

    svc$delete_studio_component(
      clientToken = "string",
      studioComponentId = "string",
      studioId = "string"
    )
