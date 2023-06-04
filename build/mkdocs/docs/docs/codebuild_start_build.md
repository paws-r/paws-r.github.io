<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_start_build</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts running a build

### Description

Starts running a build.

### Usage

    codebuild_start_build(projectName, secondarySourcesOverride,
      secondarySourcesVersionOverride, sourceVersion, artifactsOverride,
      secondaryArtifactsOverride, environmentVariablesOverride,
      sourceTypeOverride, sourceLocationOverride, sourceAuthOverride,
      gitCloneDepthOverride, gitSubmodulesConfigOverride, buildspecOverride,
      insecureSslOverride, reportBuildStatusOverride,
      buildStatusConfigOverride, environmentTypeOverride, imageOverride,
      computeTypeOverride, certificateOverride, cacheOverride,
      serviceRoleOverride, privilegedModeOverride, timeoutInMinutesOverride,
      queuedTimeoutInMinutesOverride, encryptionKeyOverride, idempotencyToken,
      logsConfigOverride, registryCredentialOverride,
      imagePullCredentialsTypeOverride, debugSessionEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_start_build_:_projectName">projectName</code></td>
<td><p>[required] The name of the CodeBuild build project to start
running a build.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_secondarySourcesOverride">secondarySourcesOverride</code></td>
<td><p>An array of <code>ProjectSource</code> objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_secondarySourcesVersionOverride">secondarySourcesVersionOverride</code></td>
<td><p>An array of <code>ProjectSourceVersion</code> objects that
specify one or more versions of the project's secondary sources to be
used for this build only.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_sourceVersion">sourceVersion</code></td>
<td><p>The version of the build input to be built, for this build only.
If not specified, the latest version is used. If specified, the contents
depends on the source provider:</p>
<p><strong>CodeCommit</strong></p>
<p>The commit ID, branch, or Git tag to use.</p>
<p><strong>GitHub</strong></p>
<p>The commit ID, pull request ID, branch name, or tag name that
corresponds to the version of the source code you want to build. If a
pull request ID is specified, it must use the format
<code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a
branch name is specified, the branch's HEAD commit ID is used. If not
specified, the default branch's HEAD commit ID is used.</p>
<p><strong>Bitbucket</strong></p>
<p>The commit ID, branch name, or tag name that corresponds to the
version of the source code you want to build. If a branch name is
specified, the branch's HEAD commit ID is used. If not specified, the
default branch's HEAD commit ID is used.</p>
<p><strong>Amazon S3</strong></p>
<p>The version ID of the object that represents the build input ZIP file
to use.</p>
<p>If <code>sourceVersion</code> is specified at the project level, then
this <code>sourceVersion</code> (at the build level) takes
precedence.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source
Version Sample with CodeBuild</a> in the <em>CodeBuild User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_artifactsOverride">artifactsOverride</code></td>
<td><p>Build output artifact settings that override, for this build
only, the latest ones already defined in the build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_secondaryArtifactsOverride">secondaryArtifactsOverride</code></td>
<td><p>An array of <code>ProjectArtifacts</code> objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_environmentVariablesOverride">environmentVariablesOverride</code></td>
<td><p>A set of environment variables that overrides, for this build
only, the latest ones already defined in the build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_sourceTypeOverride">sourceTypeOverride</code></td>
<td><p>A source input type, for this build, that overrides the source
input defined in the build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_sourceLocationOverride">sourceLocationOverride</code></td>
<td><p>A location that overrides, for this build, the source location
for the one defined in the build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_sourceAuthOverride">sourceAuthOverride</code></td>
<td><p>An authorization type for this build that overrides the one
defined in the build project. This override applies only if the build
project's source is BitBucket or GitHub.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_gitCloneDepthOverride">gitCloneDepthOverride</code></td>
<td><p>The user-defined depth of history, with a minimum value of 0,
that overrides, for this build only, any previous depth of history
defined in the build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_gitSubmodulesConfigOverride">gitSubmodulesConfigOverride</code></td>
<td><p>Information about the Git submodules configuration for this build
of an CodeBuild build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_buildspecOverride">buildspecOverride</code></td>
<td><p>A buildspec file declaration that overrides, for this build only,
the latest one already defined in the build project.</p>
<p>If this value is set, it can be either an inline buildspec
definition, the path to an alternate buildspec file relative to the
value of the built-in <code>CODEBUILD_SRC_DIR</code> environment
variable, or the path to an S3 bucket. The bucket must be in the same
Amazon Web Services Region as the build project. Specify the buildspec
file using its ARN (for example,
<code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this
value is not provided or is set to an empty string, the source code must
contain a buildspec file in its root directory. For more information,
see <a
href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage">Buildspec
File Name and Storage Location</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_insecureSslOverride">insecureSslOverride</code></td>
<td><p>Enable this flag to override the insecure SSL setting that is
specified in the build project. The insecure SSL setting determines
whether to ignore SSL warnings while connecting to the project source
code. This override applies only if the build's source is GitHub
Enterprise.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_reportBuildStatusOverride">reportBuildStatusOverride</code></td>
<td><p>Set to true to report to your source provider the status of a
build's start and completion. If you use this option with a source
provider other than GitHub, GitHub Enterprise, or Bitbucket, an
<code>invalidInputException</code> is thrown.</p>
<p>To be able to report the build status to the source provider, the
user associated with the source provider must have write access to the
repo. If the user does not have write access, the build status cannot be
updated. For more information, see <a
href="https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html">Source
provider access</a> in the <em>CodeBuild User Guide</em>.</p>
<p>The status of a build triggered by a webhook is always reported to
your source provider.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_buildStatusConfigOverride">buildStatusConfigOverride</code></td>
<td><p>Contains information that defines how the build project reports
the build status to the source provider. This option is only used when
the source provider is <code>GITHUB</code>,
<code>GITHUB_ENTERPRISE</code>, or <code>BITBUCKET</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_environmentTypeOverride">environmentTypeOverride</code></td>
<td><p>A container type for this build that overrides the one specified
in the build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_imageOverride">imageOverride</code></td>
<td><p>The name of an image for this build that overrides the one
specified in the build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_computeTypeOverride">computeTypeOverride</code></td>
<td><p>The name of a compute type for this build that overrides the one
specified in the build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_certificateOverride">certificateOverride</code></td>
<td><p>The name of a certificate for this build that overrides the one
specified in the build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_cacheOverride">cacheOverride</code></td>
<td><p>A ProjectCache object specified for this build that overrides the
one defined in the build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_serviceRoleOverride">serviceRoleOverride</code></td>
<td><p>The name of a service role for this build that overrides the one
specified in the build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_privilegedModeOverride">privilegedModeOverride</code></td>
<td><p>Enable this flag to override privileged mode in the build
project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_timeoutInMinutesOverride">timeoutInMinutesOverride</code></td>
<td><p>The number of build timeout minutes, from 5 to 480 (8 hours),
that overrides, for this build only, the latest setting already defined
in the build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_queuedTimeoutInMinutesOverride">queuedTimeoutInMinutesOverride</code></td>
<td><p>The number of minutes a build is allowed to be queued before it
times out.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_encryptionKeyOverride">encryptionKeyOverride</code></td>
<td><p>The Key Management Service customer master key (CMK) that
overrides the one specified in the build project. The CMK key encrypts
the build output artifacts.</p>
<p>You can use a cross-account KMS key to encrypt the build output
artifacts if your service role has permission to that key.</p>
<p>You can specify either the Amazon Resource Name (ARN) of the CMK or,
if available, the CMK's alias (using the format <code
style="white-space: pre;">⁠alias/&lt;alias-name&gt;⁠</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_idempotencyToken">idempotencyToken</code></td>
<td><p>A unique, case sensitive identifier you provide to ensure the
idempotency of the StartBuild request. The token is included in the
StartBuild request and is valid for 5 minutes. If you repeat the
StartBuild request with the same token, but change a parameter,
CodeBuild returns a parameter mismatch error.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_logsConfigOverride">logsConfigOverride</code></td>
<td><p>Log settings for this build that override the log settings
defined in the build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_registryCredentialOverride">registryCredentialOverride</code></td>
<td><p>The credentials for access to a private registry.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_:_imagePullCredentialsTypeOverride">imagePullCredentialsTypeOverride</code></td>
<td><p>The type of credentials CodeBuild uses to pull images in your
build. There are two valid values:</p>
<p><strong>CODEBUILD</strong></p>
<p>Specifies that CodeBuild uses its own credentials. This requires that
you modify your ECR repository policy to trust CodeBuild's service
principal.</p>
<p><strong>SERVICE_ROLE</strong></p>
<p>Specifies that CodeBuild uses your build project's service role.</p>
<p>When using a cross-account or private registry image, you must use
<code>SERVICE_ROLE</code> credentials. When using an CodeBuild curated
image, you must use <code>CODEBUILD</code> credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_:_debugSessionEnabled">debugSessionEnabled</code></td>
<td><p>Specifies if session debugging is enabled for this build. For
more information, see <a
href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing
a running build in Session Manager</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      build = list(
        id = "string",
        arn = "string",
        buildNumber = 123,
        startTime = as.POSIXct(
          "2015-01-01"
        ),
        endTime = as.POSIXct(
          "2015-01-01"
        ),
        currentPhase = "string",
        buildStatus = "SUCCEEDED"|"FAILED"|"FAULT"|"TIMED_OUT"|"IN_PROGRESS"|"STOPPED",
        sourceVersion = "string",
        resolvedSourceVersion = "string",
        projectName = "string",
        phases = list(
          list(
            phaseType = "SUBMITTED"|"QUEUED"|"PROVISIONING"|"DOWNLOAD_SOURCE"|"INSTALL"|"PRE_BUILD"|"BUILD"|"POST_BUILD"|"UPLOAD_ARTIFACTS"|"FINALIZING"|"COMPLETED",
            phaseStatus = "SUCCEEDED"|"FAILED"|"FAULT"|"TIMED_OUT"|"IN_PROGRESS"|"STOPPED",
            startTime = as.POSIXct(
              "2015-01-01"
            ),
            endTime = as.POSIXct(
              "2015-01-01"
            ),
            durationInSeconds = 123,
            contexts = list(
              list(
                statusCode = "string",
                message = "string"
              )
            )
          )
        ),
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
        secondarySourceVersions = list(
          list(
            sourceIdentifier = "string",
            sourceVersion = "string"
          )
        ),
        artifacts = list(
          location = "string",
          sha256sum = "string",
          md5sum = "string",
          overrideArtifactName = TRUE|FALSE,
          encryptionDisabled = TRUE|FALSE,
          artifactIdentifier = "string",
          bucketOwnerAccess = "NONE"|"READ_ONLY"|"FULL"
        ),
        secondaryArtifacts = list(
          list(
            location = "string",
            sha256sum = "string",
            md5sum = "string",
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
        logs = list(
          groupName = "string",
          streamName = "string",
          deepLink = "string",
          s3DeepLink = "string",
          cloudWatchLogsArn = "string",
          s3LogsArn = "string",
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
        timeoutInMinutes = 123,
        queuedTimeoutInMinutes = 123,
        buildComplete = TRUE|FALSE,
        initiator = "string",
        vpcConfig = list(
          vpcId = "string",
          subnets = list(
            "string"
          ),
          securityGroupIds = list(
            "string"
          )
        ),
        networkInterface = list(
          subnetId = "string",
          networkInterfaceId = "string"
        ),
        encryptionKey = "string",
        exportedEnvironmentVariables = list(
          list(
            name = "string",
            value = "string"
          )
        ),
        reportArns = list(
          "string"
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
        debugSession = list(
          sessionEnabled = TRUE|FALSE,
          sessionTarget = "string"
        ),
        buildBatchArn = "string"
      )
    )

### Request syntax

    svc$start_build(
      projectName = "string",
      secondarySourcesOverride = list(
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
      secondarySourcesVersionOverride = list(
        list(
          sourceIdentifier = "string",
          sourceVersion = "string"
        )
      ),
      sourceVersion = "string",
      artifactsOverride = list(
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
      secondaryArtifactsOverride = list(
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
      environmentVariablesOverride = list(
        list(
          name = "string",
          value = "string",
          type = "PLAINTEXT"|"PARAMETER_STORE"|"SECRETS_MANAGER"
        )
      ),
      sourceTypeOverride = "CODECOMMIT"|"CODEPIPELINE"|"GITHUB"|"S3"|"BITBUCKET"|"GITHUB_ENTERPRISE"|"NO_SOURCE",
      sourceLocationOverride = "string",
      sourceAuthOverride = list(
        type = "OAUTH",
        resource = "string"
      ),
      gitCloneDepthOverride = 123,
      gitSubmodulesConfigOverride = list(
        fetchSubmodules = TRUE|FALSE
      ),
      buildspecOverride = "string",
      insecureSslOverride = TRUE|FALSE,
      reportBuildStatusOverride = TRUE|FALSE,
      buildStatusConfigOverride = list(
        context = "string",
        targetUrl = "string"
      ),
      environmentTypeOverride = "WINDOWS_CONTAINER"|"LINUX_CONTAINER"|"LINUX_GPU_CONTAINER"|"ARM_CONTAINER"|"WINDOWS_SERVER_2019_CONTAINER",
      imageOverride = "string",
      computeTypeOverride = "BUILD_GENERAL1_SMALL"|"BUILD_GENERAL1_MEDIUM"|"BUILD_GENERAL1_LARGE"|"BUILD_GENERAL1_2XLARGE",
      certificateOverride = "string",
      cacheOverride = list(
        type = "NO_CACHE"|"S3"|"LOCAL",
        location = "string",
        modes = list(
          "LOCAL_DOCKER_LAYER_CACHE"|"LOCAL_SOURCE_CACHE"|"LOCAL_CUSTOM_CACHE"
        )
      ),
      serviceRoleOverride = "string",
      privilegedModeOverride = TRUE|FALSE,
      timeoutInMinutesOverride = 123,
      queuedTimeoutInMinutesOverride = 123,
      encryptionKeyOverride = "string",
      idempotencyToken = "string",
      logsConfigOverride = list(
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
      registryCredentialOverride = list(
        credential = "string",
        credentialProvider = "SECRETS_MANAGER"
      ),
      imagePullCredentialsTypeOverride = "CODEBUILD"|"SERVICE_ROLE",
      debugSessionEnabled = TRUE|FALSE
    )
