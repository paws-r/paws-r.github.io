<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_create_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an application

### Description

Creates an application.

### Usage

    emrserverless_create_application(name, releaseLabel, type, clientToken,
      initialCapacity, maximumCapacity, tags, autoStartConfiguration,
      autoStopConfiguration, networkConfiguration, architecture,
      imageConfiguration, workerTypeSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emrserverless_create_application_:_name">name</code></td>
<td><p>The name of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_create_application_:_releaseLabel">releaseLabel</code></td>
<td><p>[required] The EMR release associated with the
application.</p></td>
</tr>
<tr class="odd">
<td><code id="emrserverless_create_application_:_type">type</code></td>
<td><p>[required] The type of application you want to start, such as
Spark or Hive.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_create_application_:_clientToken">clientToken</code></td>
<td><p>[required] The client idempotency token of the application to
create. Its value must be unique for each request.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrserverless_create_application_:_initialCapacity">initialCapacity</code></td>
<td><p>The capacity to initialize when the application is
created.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_create_application_:_maximumCapacity">maximumCapacity</code></td>
<td><p>The maximum capacity to allocate when the application is created.
This is cumulative across all workers at any given point in time, not
just when an application is created. No new resources will be created
once any one of the defined limits is hit.</p></td>
</tr>
<tr class="odd">
<td><code id="emrserverless_create_application_:_tags">tags</code></td>
<td><p>The tags assigned to the application.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_create_application_:_autoStartConfiguration">autoStartConfiguration</code></td>
<td><p>The configuration for an application to automatically start on
job submission.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrserverless_create_application_:_autoStopConfiguration">autoStopConfiguration</code></td>
<td><p>The configuration for an application to automatically stop after
a certain amount of time being idle.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_create_application_:_networkConfiguration">networkConfiguration</code></td>
<td><p>The network configuration for customer VPC connectivity.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrserverless_create_application_:_architecture">architecture</code></td>
<td><p>The CPU architecture of an application.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_create_application_:_imageConfiguration">imageConfiguration</code></td>
<td><p>The image configuration for all worker types. You can either set
this parameter or <code>imageConfiguration</code> for each worker type
in <code>workerTypeSpecifications</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrserverless_create_application_:_workerTypeSpecifications">workerTypeSpecifications</code></td>
<td><p>The key-value pairs that specify worker type to
<code>WorkerTypeSpecificationInput</code>. This parameter must contain
all valid worker types for a Spark or Hive application. Valid worker
types include <code>Driver</code> and <code>Executor</code> for Spark
applications and <code>HiveDriver</code> and <code>TezTask</code> for
Hive applications. You can either set image details in this parameter
for each worker type, or in <code>imageConfiguration</code> for all
worker types.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applicationId = "string",
      name = "string",
      arn = "string"
    )

### Request syntax

    svc$create_application(
      name = "string",
      releaseLabel = "string",
      type = "string",
      clientToken = "string",
      initialCapacity = list(
        list(
          workerCount = 123,
          workerConfiguration = list(
            cpu = "string",
            memory = "string",
            disk = "string"
          )
        )
      ),
      maximumCapacity = list(
        cpu = "string",
        memory = "string",
        disk = "string"
      ),
      tags = list(
        "string"
      ),
      autoStartConfiguration = list(
        enabled = TRUE|FALSE
      ),
      autoStopConfiguration = list(
        enabled = TRUE|FALSE,
        idleTimeoutMinutes = 123
      ),
      networkConfiguration = list(
        subnetIds = list(
          "string"
        ),
        securityGroupIds = list(
          "string"
        )
      ),
      architecture = "ARM64"|"X86_64",
      imageConfiguration = list(
        imageUri = "string"
      ),
      workerTypeSpecifications = list(
        list(
          imageConfiguration = list(
            imageUri = "string"
          )
        )
      )
    )
