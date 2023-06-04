<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_create_studio_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a studio component resource

### Description

Creates a studio component resource.

### Usage

    nimblestudio_create_studio_component(clientToken, configuration,
      description, ec2SecurityGroupIds, initializationScripts, name,
      runtimeRoleArn, scriptParameters, secureInitializationRoleArn, studioId,
      subtype, tags, type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_create_studio_component_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_studio_component_:_configuration">configuration</code></td>
<td><p>The configuration of the studio component, based on component
type.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_studio_component_:_description">description</code></td>
<td><p>The description.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_studio_component_:_ec2SecurityGroupIds">ec2SecurityGroupIds</code></td>
<td><p>The EC2 security groups that control access to the studio
component.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_studio_component_:_initializationScripts">initializationScripts</code></td>
<td><p>Initialization scripts for studio components.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_studio_component_:_name">name</code></td>
<td><p>[required] The name for the studio component.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_studio_component_:_runtimeRoleArn">runtimeRoleArn</code></td>
<td><p>An IAM role attached to a Studio Component that gives the studio
component access to Amazon Web Services resources at anytime while the
instance is running.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_studio_component_:_scriptParameters">scriptParameters</code></td>
<td><p>Parameters for the studio component scripts.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_studio_component_:_secureInitializationRoleArn">secureInitializationRoleArn</code></td>
<td><p>An IAM role attached to Studio Component when the system
initialization script runs which give the studio component access to
Amazon Web Services resources when the system initialization script
runs.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_studio_component_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_studio_component_:_subtype">subtype</code></td>
<td><p>The specific subtype of a studio component.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_studio_component_:_tags">tags</code></td>
<td><p>A collection of labels, in the form of key-value pairs, that
apply to this resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_studio_component_:_type">type</code></td>
<td><p>[required] The type of the studio component.</p></td>
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

    svc$create_studio_component(
      clientToken = "string",
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
      studioId = "string",
      subtype = "AWS_MANAGED_MICROSOFT_AD"|"AMAZON_FSX_FOR_WINDOWS"|"AMAZON_FSX_FOR_LUSTRE"|"CUSTOM",
      tags = list(
        "string"
      ),
      type = "ACTIVE_DIRECTORY"|"SHARED_FILE_SYSTEM"|"COMPUTE_FARM"|"LICENSE_SERVICE"|"CUSTOM"
    )
