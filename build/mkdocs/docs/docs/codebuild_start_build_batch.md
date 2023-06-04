<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_start_build_batch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a batch build for a project

### Description

Starts a batch build for a project.

### Usage

    codebuild_start_build_batch(projectName, secondarySourcesOverride,
      secondarySourcesVersionOverride, sourceVersion, artifactsOverride,
      secondaryArtifactsOverride, environmentVariablesOverride,
      sourceTypeOverride, sourceLocationOverride, sourceAuthOverride,
      gitCloneDepthOverride, gitSubmodulesConfigOverride, buildspecOverride,
      insecureSslOverride, reportBuildBatchStatusOverride,
      environmentTypeOverride, imageOverride, computeTypeOverride,
      certificateOverride, cacheOverride, serviceRoleOverride,
      privilegedModeOverride, buildTimeoutInMinutesOverride,
      queuedTimeoutInMinutesOverride, encryptionKeyOverride, idempotencyToken,
      logsConfigOverride, registryCredentialOverride,
      imagePullCredentialsTypeOverride, buildBatchConfigOverride,
      debugSessionEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_projectName">projectName</code></td>
<td><p>[required] The name of the project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_secondarySourcesOverride">secondarySourcesOverride</code></td>
<td><p>An array of <code>ProjectSource</code> objects that override the
secondary sources defined in the batch build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_secondarySourcesVersionOverride">secondarySourcesVersionOverride</code></td>
<td><p>An array of <code>ProjectSourceVersion</code> objects that
override the secondary source versions in the batch build
project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_sourceVersion">sourceVersion</code></td>
<td><p>The version of the batch build input to be built, for this build
only. If not specified, the latest version is used. If specified, the
contents depends on the source provider:</p>
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
id="codebuild_start_build_batch_:_artifactsOverride">artifactsOverride</code></td>
<td><p>An array of <code>ProjectArtifacts</code> objects that contains
information about the build output artifact overrides for the build
project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_secondaryArtifactsOverride">secondaryArtifactsOverride</code></td>
<td><p>An array of <code>ProjectArtifacts</code> objects that override
the secondary artifacts defined in the batch build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_environmentVariablesOverride">environmentVariablesOverride</code></td>
<td><p>An array of <code>EnvironmentVariable</code> objects that
override, or add to, the environment variables defined in the batch
build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_sourceTypeOverride">sourceTypeOverride</code></td>
<td><p>The source input type that overrides the source input defined in
the batch build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_sourceLocationOverride">sourceLocationOverride</code></td>
<td><p>A location that overrides, for this batch build, the source
location defined in the batch build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_sourceAuthOverride">sourceAuthOverride</code></td>
<td><p>A <code>SourceAuth</code> object that overrides the one defined
in the batch build project. This override applies only if the build
project's source is BitBucket or GitHub.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_gitCloneDepthOverride">gitCloneDepthOverride</code></td>
<td><p>The user-defined depth of history, with a minimum value of 0,
that overrides, for this batch build only, any previous depth of history
defined in the batch build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_gitSubmodulesConfigOverride">gitSubmodulesConfigOverride</code></td>
<td><p>A <code>GitSubmodulesConfig</code> object that overrides the Git
submodules configuration for this batch build.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_buildspecOverride">buildspecOverride</code></td>
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
id="codebuild_start_build_batch_:_insecureSslOverride">insecureSslOverride</code></td>
<td><p>Enable this flag to override the insecure SSL setting that is
specified in the batch build project. The insecure SSL setting
determines whether to ignore SSL warnings while connecting to the
project source code. This override applies only if the build's source is
GitHub Enterprise.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_reportBuildBatchStatusOverride">reportBuildBatchStatusOverride</code></td>
<td><p>Set to <code>true</code> to report to your source provider the
status of a batch build's start and completion. If you use this option
with a source provider other than GitHub, GitHub Enterprise, or
Bitbucket, an <code>invalidInputException</code> is thrown.</p>
<p>The status of a build triggered by a webhook is always reported to
your source provider.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_environmentTypeOverride">environmentTypeOverride</code></td>
<td><p>A container type for this batch build that overrides the one
specified in the batch build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_imageOverride">imageOverride</code></td>
<td><p>The name of an image for this batch build that overrides the one
specified in the batch build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_computeTypeOverride">computeTypeOverride</code></td>
<td><p>The name of a compute type for this batch build that overrides
the one specified in the batch build project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_certificateOverride">certificateOverride</code></td>
<td><p>The name of a certificate for this batch build that overrides the
one specified in the batch build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_cacheOverride">cacheOverride</code></td>
<td><p>A <code>ProjectCache</code> object that specifies cache
overrides.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_serviceRoleOverride">serviceRoleOverride</code></td>
<td><p>The name of a service role for this batch build that overrides
the one specified in the batch build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_privilegedModeOverride">privilegedModeOverride</code></td>
<td><p>Enable this flag to override privileged mode in the batch build
project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_buildTimeoutInMinutesOverride">buildTimeoutInMinutesOverride</code></td>
<td><p>Overrides the build timeout specified in the batch build
project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_queuedTimeoutInMinutesOverride">queuedTimeoutInMinutesOverride</code></td>
<td><p>The number of minutes a batch build is allowed to be queued
before it times out.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_encryptionKeyOverride">encryptionKeyOverride</code></td>
<td><p>The Key Management Service customer master key (CMK) that
overrides the one specified in the batch build project. The CMK key
encrypts the build output artifacts.</p>
<p>You can use a cross-account KMS key to encrypt the build output
artifacts if your service role has permission to that key.</p>
<p>You can specify either the Amazon Resource Name (ARN) of the CMK or,
if available, the CMK's alias (using the format <code
style="white-space: pre;">⁠alias/&lt;alias-name&gt;⁠</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_idempotencyToken">idempotencyToken</code></td>
<td><p>A unique, case sensitive identifier you provide to ensure the
idempotency of the <code>start_build_batch</code> request. The token is
included in the <code>start_build_batch</code> request and is valid for
five minutes. If you repeat the <code>start_build_batch</code> request
with the same token, but change a parameter, CodeBuild returns a
parameter mismatch error.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_logsConfigOverride">logsConfigOverride</code></td>
<td><p>A <code>LogsConfig</code> object that override the log settings
defined in the batch build project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_registryCredentialOverride">registryCredentialOverride</code></td>
<td><p>A <code>RegistryCredential</code> object that overrides
credentials for access to a private registry.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_imagePullCredentialsTypeOverride">imagePullCredentialsTypeOverride</code></td>
<td><p>The type of credentials CodeBuild uses to pull images in your
batch build. There are two valid values:</p>
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
<tr class="even">
<td><code
id="codebuild_start_build_batch_:_buildBatchConfigOverride">buildBatchConfigOverride</code></td>
<td><p>A <code>BuildBatchConfigOverride</code> object that contains
batch build configuration overrides.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_start_build_batch_:_debugSessionEnabled">debugSessionEnabled</code></td>
<td><p>Specifies if session debugging is enabled for this batch build.
For more information, see <a
href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing
a running build in Session Manager</a>. Batch session debugging is not
supported for matrix batch builds.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      buildBatch = list(
        id = "string",
        arn = "string",
        startTime = as.POSIXct(
          "2015-01-01"
        ),
        endTime = as.POSIXct(
          "2015-01-01"
        ),
        currentPhase = "string",
        buildBatchStatus = "SUCCEEDED"|"FAILED"|"FAULT"|"TIMED_OUT"|"IN_PROGRESS"|"STOPPED",
        sourceVersion = "string",
        resolvedSourceVersion = "string",
        projectName = "string",
        phases = list(
          list(
            phaseType = "SUBMITTED"|"DOWNLOAD_BATCHSPEC"|"IN_PROGRESS"|"COMBINE_ARTIFACTS"|"SUCCEEDED"|"FAILED"|"STOPPED",
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
        logConfig = list(
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
        buildTimeoutInMinutes = 123,
        queuedTimeoutInMinutes = 123,
        complete = TRUE|FALSE,
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
        encryptionKey = "string",
        buildBatchNumber = 123,
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
        buildGroups = list(
          list(
            identifier = "string",
            dependsOn = list(
              "string"
            ),
            ignoreFailure = TRUE|FALSE,
            currentBuildSummary = list(
              arn = "string",
              requestedOn = as.POSIXct(
                "2015-01-01"
              ),
              buildStatus = "SUCCEEDED"|"FAILED"|"FAULT"|"TIMED_OUT"|"IN_PROGRESS"|"STOPPED",
              primaryArtifact = list(
                type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
                location = "string",
                identifier = "string"
              ),
              secondaryArtifacts = list(
                list(
                  type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
                  location = "string",
                  identifier = "string"
                )
              )
            ),
            priorBuildSummaryList = list(
              list(
                arn = "string",
                requestedOn = as.POSIXct(
                  "2015-01-01"
                ),
                buildStatus = "SUCCEEDED"|"FAILED"|"FAULT"|"TIMED_OUT"|"IN_PROGRESS"|"STOPPED",
                primaryArtifact = list(
                  type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
                  location = "string",
                  identifier = "string"
                ),
                secondaryArtifacts = list(
                  list(
                    type = "CODEPIPELINE"|"S3"|"NO_ARTIFACTS",
                    location = "string",
                    identifier = "string"
                  )
                )
              )
            )
          )
        ),
        debugSessionEnabled = TRUE|FALSE
      )
    )

### Request syntax

    svc$start_build_batch(
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
      reportBuildBatchStatusOverride = TRUE|FALSE,
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
      buildTimeoutInMinutesOverride = 123,
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
      buildBatchConfigOverride = list(
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
      debugSessionEnabled = TRUE|FALSE
    )
