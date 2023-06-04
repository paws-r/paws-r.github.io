<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new session

### Description

Creates a new session.

### Usage

    glue_create_session(Id, Description, Role, Command, Timeout,
      IdleTimeout, DefaultArguments, Connections, MaxCapacity,
      NumberOfWorkers, WorkerType, SecurityConfiguration, GlueVersion, Tags,
      RequestOrigin)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_session_:_Id">Id</code></td>
<td><p>[required] The ID of the session request.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_session_:_Description">Description</code></td>
<td><p>The description of the session.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_session_:_Role">Role</code></td>
<td><p>[required] The IAM Role ARN</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_session_:_Command">Command</code></td>
<td><p>[required] The <code>SessionCommand</code> that runs the
job.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_session_:_Timeout">Timeout</code></td>
<td><p>The number of minutes before session times out. Default for Spark
ETL jobs is 48 hours (2880 minutes), the maximum session lifetime for
this job type. Consult the documentation for other job types.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_session_:_IdleTimeout">IdleTimeout</code></td>
<td><p>The number of minutes when idle before session times out. Default
for Spark ETL jobs is value of Timeout. Consult the documentation for
other job types.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_session_:_DefaultArguments">DefaultArguments</code></td>
<td><p>A map array of key-value pairs. Max is 75 pairs.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_session_:_Connections">Connections</code></td>
<td><p>The number of connections to use for the session.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_session_:_MaxCapacity">MaxCapacity</code></td>
<td><p>The number of Glue data processing units (DPUs) that can be
allocated when the job runs. A DPU is a relative measure of processing
power that consists of 4 vCPUs of compute capacity and 16 GB
memory.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_session_:_NumberOfWorkers">NumberOfWorkers</code></td>
<td><p>The number of workers of a defined <code>WorkerType</code> to use
for the session.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_session_:_WorkerType">WorkerType</code></td>
<td><p>The type of predefined worker that is allocated to use for the
session. Accepts a value of Standard, G.1X, G.2X, or G.025X.</p>
<ul>
<li><p>For the <code>Standard</code> worker type, each worker provides 4
vCPU, 16 GB of memory and a 50GB disk, and 2 executors per
worker.</p></li>
<li><p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU
(4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per
worker. We recommend this worker type for memory-intensive
jobs.</p></li>
<li><p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU
(8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per
worker. We recommend this worker type for memory-intensive
jobs.</p></li>
<li><p>For the <code>G.025X</code> worker type, each worker maps to 0.25
DPU (2 vCPU, 4 GB of memory, 64 GB disk), and provides 1 executor per
worker. We recommend this worker type for low volume streaming jobs.
This worker type is only available for Glue version 3.0 streaming
jobs.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="glue_create_session_:_SecurityConfiguration">SecurityConfiguration</code></td>
<td><p>The name of the SecurityConfiguration structure to be used with
the session</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_session_:_GlueVersion">GlueVersion</code></td>
<td><p>The Glue version determines the versions of Apache Spark and
Python that Glue supports. The GlueVersion must be greater than
2.0.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_session_:_Tags">Tags</code></td>
<td><p>The map of key value pairs (tags) belonging to the
session.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_session_:_RequestOrigin">RequestOrigin</code></td>
<td><p>The origin of the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Session = list(
        Id = "string",
        CreatedOn = as.POSIXct(
          "2015-01-01"
        ),
        Status = "PROVISIONING"|"READY"|"FAILED"|"TIMEOUT"|"STOPPING"|"STOPPED",
        ErrorMessage = "string",
        Description = "string",
        Role = "string",
        Command = list(
          Name = "string",
          PythonVersion = "string"
        ),
        DefaultArguments = list(
          "string"
        ),
        Connections = list(
          Connections = list(
            "string"
          )
        ),
        Progress = 123.0,
        MaxCapacity = 123.0,
        SecurityConfiguration = "string",
        GlueVersion = "string"
      )
    )

### Request syntax

    svc$create_session(
      Id = "string",
      Description = "string",
      Role = "string",
      Command = list(
        Name = "string",
        PythonVersion = "string"
      ),
      Timeout = 123,
      IdleTimeout = 123,
      DefaultArguments = list(
        "string"
      ),
      Connections = list(
        Connections = list(
          "string"
        )
      ),
      MaxCapacity = 123.0,
      NumberOfWorkers = 123,
      WorkerType = "Standard"|"G.1X"|"G.2X"|"G.025X"|"G.4X"|"G.8X",
      SecurityConfiguration = "string",
      GlueVersion = "string",
      Tags = list(
        "string"
      ),
      RequestOrigin = "string"
    )
