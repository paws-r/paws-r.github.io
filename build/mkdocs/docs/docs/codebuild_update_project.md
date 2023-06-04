<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_update_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the settings of a build project

### Description

Changes the settings of a build project.

### Usage

    codebuild_update_project(name, description, source, secondarySources,
      sourceVersion, secondarySourceVersions, artifacts, secondaryArtifacts,
      cache, environment, serviceRole, timeoutInMinutes,
      queuedTimeoutInMinutes, encryptionKey, tags, vpcConfig, badgeEnabled,
      logsConfig, fileSystemLocations, buildBatchConfig, concurrentBuildLimit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_update_project_:_name">name</code></td>
<td><p>[required] The name of the build project.</p>
<p>You cannot change a build project's name.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_project_:_description">description</code></td>
<td><p>A new or replacement description of the build project.</p></td>
</tr>
<tr class="odd">
<td><code id="codebuild_update_project_:_source">source</code></td>
<td><p>Information to be changed about the build input source code for
the build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_project_:_secondarySources">secondarySources</code></td>
<td><p>An array of <code>ProjectSource</code> objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_update_project_:_sourceVersion">sourceVersion</code></td>
<td><p>A version of the build input to be built for this project. If not
specified, the latest version is used. If specified, it must be one
of:</p>
<ul>
<li><p>For CodeCommit: the commit ID, branch, or Git tag to
use.</p></li>
<li><p>For GitHub: the commit ID, pull request ID, branch name, or tag
name that corresponds to the version of the source code you want to
build. If a pull request ID is specified, it must use the format
<code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a
branch name is specified, the branch's HEAD commit ID is used. If not
specified, the default branch's HEAD commit ID is used.</p></li>
<li><p>For Bitbucket: the commit ID, branch name, or tag name that
corresponds to the version of the source code you want to build. If a
branch name is specified, the branch's HEAD commit ID is used. If not
specified, the default branch's HEAD commit ID is used.</p></li>
<li><p>For Amazon S3: the version ID of the object that represents the
build input ZIP file to use.</p></li>
</ul>
<p>If <code>sourceVersion</code> is specified at the build level, then
that version takes precedence over this <code>sourceVersion</code> (at
the project level).</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source
Version Sample with CodeBuild</a> in the <em>CodeBuild User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_project_:_secondarySourceVersions">secondarySourceVersions</code></td>
<td><p>An array of <code>ProjectSourceVersion</code> objects. If
<code>secondarySourceVersions</code> is specified at the build level,
then they take over these <code>secondarySourceVersions</code> (at the
project level).</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_update_project_:_artifacts">artifacts</code></td>
<td><p>Information to be changed about the build output artifacts for
the build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_project_:_secondaryArtifacts">secondaryArtifacts</code></td>
<td><p>An array of <code>ProjectArtifact</code> objects.</p></td>
</tr>
<tr class="odd">
<td><code id="codebuild_update_project_:_cache">cache</code></td>
<td><p>Stores recently used information so that it can be quickly
accessed at a later time.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_project_:_environment">environment</code></td>
<td><p>Information to be changed about the build environment for the
build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_update_project_:_serviceRole">serviceRole</code></td>
<td><p>The replacement ARN of the IAM role that enables CodeBuild to
interact with dependent Amazon Web Services services on behalf of the
Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_project_:_timeoutInMinutes">timeoutInMinutes</code></td>
<td><p>The replacement value in minutes, from 5 to 480 (8 hours), for
CodeBuild to wait before timing out any related build that did not get
marked as completed.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_update_project_:_queuedTimeoutInMinutes">queuedTimeoutInMinutes</code></td>
<td><p>The number of minutes a build is allowed to be queued before it
times out.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_project_:_encryptionKey">encryptionKey</code></td>
<td><p>The Key Management Service customer master key (CMK) to be used
for encrypting the build output artifacts.</p>
<p>You can use a cross-account KMS key to encrypt the build output
artifacts if your service role has permission to that key.</p>
<p>You can specify either the Amazon Resource Name (ARN) of the CMK or,
if available, the CMK's alias (using the format <code
style="white-space: pre;">⁠alias/&lt;alias-name&gt;⁠</code>).</p></td>
</tr>
<tr class="odd">
<td><code id="codebuild_update_project_:_tags">tags</code></td>
<td><p>An updated list of tag key and value pairs associated with this
build project.</p>
<p>These tags are available for use by Amazon Web Services services that
support CodeBuild build project tags.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_project_:_vpcConfig">vpcConfig</code></td>
<td><p>VpcConfig enables CodeBuild to access resources in an Amazon
VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_update_project_:_badgeEnabled">badgeEnabled</code></td>
<td><p>Set this to true to generate a publicly accessible URL for your
project's build badge.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_project_:_logsConfig">logsConfig</code></td>
<td><p>Information about logs for the build project. A project can
create logs in CloudWatch Logs, logs in an S3 bucket, or both.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_update_project_:_fileSystemLocations">fileSystemLocations</code></td>
<td><p>An array of <code>ProjectFileSystemLocation</code> objects for a
CodeBuild build project. A <code>ProjectFileSystemLocation</code> object
specifies the <code>identifier</code>, <code>location</code>,
<code>mountOptions</code>, <code>mountPoint</code>, and
<code>type</code> of a file system created using Amazon Elastic File
System.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_project_:_buildBatchConfig">buildBatchConfig</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_update_project_:_concurrentBuildLimit">concurrentBuildLimit</code></td>
<td><p>The maximum number of concurrent builds that are allowed for this
project.</p>
<p>New builds are only started if the current number of builds is less
than or equal to this limit. If the current build count meets this
limit, new builds are throttled and are not run.</p>
<p>To remove this limit, set this value to -1.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      project = list(
        name = "string",
        arn = "string",
        description = "string",
        source = list(
          type = "CODECOMMIT"|"CODEPIPELINE"|"GITHUB"|"S3"|"BITBUCKET"|"GITHUB_ENTERPRISE"|"NO_SOURCE",
          location = "string",
          gitCloneDepth = 123,
          gitSubmodulesConfig = list(
            fetchSubmodules = TRUE|FALSE
          ),
          buildspec = "string",
          auth = list(
            type = "OAUTH",
            resource = "string"
          ),
          reportBuildStatus = TRUE|FALSE,
          buildStatusConfig = list(
            context = "string",
            targetUrl = "string"
          ),
          insecureSsl = TRUE|FALSE,
          sourceIdentifier = "string"
        ),
        secondarySources = list(
          list(
            type = "CODECOMMIT"|"CODEPIPELINE"|"GITHUB"|"S3"|"BITBUCKET"|"GITHUB_ENTERPRISE"|"NO_SOURCE",
            location = "string",
            gitCloneDepth = 123,
            gitSubmodulesConfig = list(
              fetchSubmodules = TRUE|FALSE
            ),
            buildspec = "string",
            auth = list(
              type = "OAUTH",
              resource = "string"
            ),
            reportBuildStatus = TRUE|FALSE,
            buildStatusConfig = list(
              context = "string",
              targetUrl = "string"
            ),
            insecureSsl = TRUE|FALSE,
            sourceIdentifier = "string"
          )
        ),
        sourceVersion = "string",
        secondarySourceVersions = list(
          list(
            sourceIdentifier = "string",
            sourceVersion = "string"
          )
        ),
        artifacts = list(
          type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
          location = "string",
          path = "string",
          namespaceType = "NONE"|"BUILD_ID",
          name = "string",
          packaging = "NONE"|"ZIP",
          overrideArtifactName = TRUE|FALSE,
          encryptionDisabled = TRUE|FALSE,
          artifactIdentifier = "string",
          bucketOwnerAccess = "NONE"|"READ_ONLY"|"FULL"
        ),
        secondaryArtifacts = list(
          list(
            type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
            location = "string",
            path = "string",
            namespaceType = "NONE"|"BUILD_ID",
            name = "string",
            packaging = "NONE"|"ZIP",
            overrideArtifactName = TRUE|FALSE,
            encryptionDisabled = TRUE|FALSE,
            artifactIdentifier = "string",
            bucketOwnerAccess = "NONE"|"READ_ONLY"|"FULL"
          )
        ),
        cache = list(
          type = "NO_CACHE"|"S3"|"LOCAL",
          location = "string",
          modes = list(
            "LOCAL_DOCKER_LAYER_CACHE"|"LOCAL_SOURCE_CACHE"|"LOCAL_CUSTOM_CACHE"
          )
        ),
        environment = list(
          type = "WINDOWS_CONTAINER"|"LINUX_CONTAINER"|"LINUX_GPU_CONTAINER"|"ARM_CONTAINER"|"WINDOWS_SERVER_2019_CONTAINER",
          image = "string",
          computeType = "BUILD_GENERAL1_SMALL"|"BUILD_GENERAL1_MEDIUM"|"BUILD_GENERAL1_LARGE"|"BUILD_GENERAL1_2XLARGE",
          environmentVariables = list(
            list(
              name = "string",
              value = "string",
              type = "PLAINTEXT"|"PARAMETER_STORE"|"SECRETS_MANAGER"
            )
          ),
          privilegedMode = TRUE|FALSE,
          certificate = "string",
          registryCredential = list(
            credential = "string",
            credentialProvider = "SECRETS_MANAGER"
          ),
          imagePullCredentialsType = "CODEBUILD"|"SERVICE_ROLE"
        ),
        serviceRole = "string",
        timeoutInMinutes = 123,
        queuedTimeoutInMinutes = 123,
        encryptionKey = "string",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        created = as.POSIXct(
          "2015-01-01"
        ),
        lastModified = as.POSIXct(
          "2015-01-01"
        ),
        webhook = list(
          url = "string",
          payloadUrl = "string",
          secret = "string",
          branchFilter = "string",
          filterGroups = list(
            list(
              list(
                type = "EVENT"|"BASE_REF"|"HEAD_REF"|"ACTOR_ACCOUNT_ID"|"FILE_PATH"|"COMMIT_MESSAGE",
                pattern = "string",
                excludeMatchedPattern = TRUE|FALSE
              )
            )
          ),
          buildType = "BUILD"|"BUILD_BATCH",
          lastModifiedSecret = as.POSIXct(
            "2015-01-01"
          )
        ),
        vpcConfig = list(
          vpcId = "string",
          subnets = list(
            "string"
          ),
          securityGroupIds = list(
            "string"
          )
        ),
        badge = list(
          badgeEnabled = TRUE|FALSE,
          badgeRequestUrl = "string"
        ),
        logsConfig = list(
          cloudWatchLogs = list(
            status = "ENABLED"|"DISABLED",
            groupName = "string",
            streamName = "string"
          ),
          s3Logs = list(
            status = "ENABLED"|"DISABLED",
            location = "string",
            encryptionDisabled = TRUE|FALSE,
            bucketOwnerAccess = "NONE"|"READ_ONLY"|"FULL"
          )
        ),
        fileSystemLocations = list(
          list(
            type = "EFS",
            location = "string",
            mountPoint = "string",
            identifier = "string",
            mountOptions = "string"
          )
        ),
        buildBatchConfig = list(
          serviceRole = "string",
          combineArtifacts = TRUE|FALSE,
          restrictions = list(
            maximumBuildsAllowed = 123,
            computeTypesAllowed = list(
              "string"
            )
          ),
          timeoutInMins = 123,
          batchReportMode = "REPORT_INDIVIDUAL_BUILDS"|"REPORT_AGGREGATED_BATCH"
        ),
        concurrentBuildLimit = 123,
        projectVisibility = "PUBLIC_READ"|"PRIVATE",
        publicProjectAlias = "string",
        resourceAccessRole = "string"
      )
    )

### Request syntax

    svc$update_project(
      name = "string",
      description = "string",
      source = list(
        type = "CODECOMMIT"|"CODEPIPELINE"|"GITHUB"|"S3"|"BITBUCKET"|"GITHUB_ENTERPRISE"|"NO_SOURCE",
        location = "string",
        gitCloneDepth = 123,
        gitSubmodulesConfig = list(
          fetchSubmodules = TRUE|FALSE
        ),
        buildspec = "string",
        auth = list(
          type = "OAUTH",
          resource = "string"
        ),
        reportBuildStatus = TRUE|FALSE,
        buildStatusConfig = list(
          context = "string",
          targetUrl = "string"
        ),
        insecureSsl = TRUE|FALSE,
        sourceIdentifier = "string"
      ),
      secondarySources = list(
        list(
          type = "CODECOMMIT"|"CODEPIPELINE"|"GITHUB"|"S3"|"BITBUCKET"|"GITHUB_ENTERPRISE"|"NO_SOURCE",
          location = "string",
          gitCloneDepth = 123,
          gitSubmodulesConfig = list(
            fetchSubmodules = TRUE|FALSE
          ),
          buildspec = "string",
          auth = list(
            type = "OAUTH",
            resource = "string"
          ),
          reportBuildStatus = TRUE|FALSE,
          buildStatusConfig = list(
            context = "string",
            targetUrl = "string"
          ),
          insecureSsl = TRUE|FALSE,
          sourceIdentifier = "string"
        )
      ),
      sourceVersion = "string",
      secondarySourceVersions = list(
        list(
          sourceIdentifier = "string",
          sourceVersion = "string"
        )
      ),
      artifacts = list(
        type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
        location = "string",
        path = "string",
        namespaceType = "NONE"|"BUILD_ID",
        name = "string",
        packaging = "NONE"|"ZIP",
        overrideArtifactName = TRUE|FALSE,
        encryptionDisabled = TRUE|FALSE,
        artifactIdentifier = "string",
        bucketOwnerAccess = "NONE"|"READ_ONLY"|"FULL"
      ),
      secondaryArtifacts = list(
        list(
          type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
          location = "string",
          path = "string",
          namespaceType = "NONE"|"BUILD_ID",
          name = "string",
          packaging = "NONE"|"ZIP",
          overrideArtifactName = TRUE|FALSE,
          encryptionDisabled = TRUE|FALSE,
          artifactIdentifier = "string",
          bucketOwnerAccess = "NONE"|"READ_ONLY"|"FULL"
        )
      ),
      cache = list(
        type = "NO_CACHE"|"S3"|"LOCAL",
        location = "string",
        modes = list(
          "LOCAL_DOCKER_LAYER_CACHE"|"LOCAL_SOURCE_CACHE"|"LOCAL_CUSTOM_CACHE"
        )
      ),
      environment = list(
        type = "WINDOWS_CONTAINER"|"LINUX_CONTAINER"|"LINUX_GPU_CONTAINER"|"ARM_CONTAINER"|"WINDOWS_SERVER_2019_CONTAINER",
        image = "string",
        computeType = "BUILD_GENERAL1_SMALL"|"BUILD_GENERAL1_MEDIUM"|"BUILD_GENERAL1_LARGE"|"BUILD_GENERAL1_2XLARGE",
        environmentVariables = list(
          list(
            name = "string",
            value = "string",
            type = "PLAINTEXT"|"PARAMETER_STORE"|"SECRETS_MANAGER"
          )
        ),
        privilegedMode = TRUE|FALSE,
        certificate = "string",
        registryCredential = list(
          credential = "string",
          credentialProvider = "SECRETS_MANAGER"
        ),
        imagePullCredentialsType = "CODEBUILD"|"SERVICE_ROLE"
      ),
      serviceRole = "string",
      timeoutInMinutes = 123,
      queuedTimeoutInMinutes = 123,
      encryptionKey = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      vpcConfig = list(
        vpcId = "string",
        subnets = list(
          "string"
        ),
        securityGroupIds = list(
          "string"
        )
      ),
      badgeEnabled = TRUE|FALSE,
      logsConfig = list(
        cloudWatchLogs = list(
          status = "ENABLED"|"DISABLED",
          groupName = "string",
          streamName = "string"
        ),
        s3Logs = list(
          status = "ENABLED"|"DISABLED",
          location = "string",
          encryptionDisabled = TRUE|FALSE,
          bucketOwnerAccess = "NONE"|"READ_ONLY"|"FULL"
        )
      ),
      fileSystemLocations = list(
        list(
          type = "EFS",
          location = "string",
          mountPoint = "string",
          identifier = "string",
          mountOptions = "string"
        )
      ),
      buildBatchConfig = list(
        serviceRole = "string",
        combineArtifacts = TRUE|FALSE,
        restrictions = list(
          maximumBuildsAllowed = 123,
          computeTypesAllowed = list(
            "string"
          )
        ),
        timeoutInMins = 123,
        batchReportMode = "REPORT_INDIVIDUAL_BUILDS"|"REPORT_AGGREGATED_BATCH"
      ),
      concurrentBuildLimit = 123
    )
