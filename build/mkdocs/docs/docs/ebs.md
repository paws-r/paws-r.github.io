<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ebs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Elastic Block Store

### Description

You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs to
create Amazon EBS snapshots, write data directly to your snapshots, read
data on your snapshots, and identify the differences or changes between
two snapshots. If you’re an independent software vendor (ISV) who offers
backup services for Amazon EBS, the EBS direct APIs make it more
efficient and cost-effective to track incremental changes on your Amazon
EBS volumes through snapshots. This can be done without having to create
new volumes from snapshots, and then use Amazon Elastic Compute Cloud
(Amazon EC2) instances to compare the differences.

You can create incremental snapshots directly from data on-premises into
volumes and the cloud to use for quick disaster recovery. With the
ability to write and read snapshots, you can write your on-premises data
to an snapshot during a disaster. Then after recovery, you can restore
it back to Amazon Web Services or on-premises from the snapshot. You no
longer need to build and maintain complex mechanisms to copy data to and
from Amazon EBS.

This API reference provides detailed information about the actions, data
types, parameters, and errors of the EBS direct APIs. For more
information about the elements that make up the EBS direct APIs, and
examples of how to use them effectively, see [Accessing the Contents of
an Amazon EBS
Snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html)
in the *Amazon Elastic Compute Cloud User Guide*. For more information
about the supported Amazon Web Services Regions, endpoints, and service
quotas for the EBS direct APIs, see [Amazon Elastic Block Store
Endpoints and
Quotas](https://docs.aws.amazon.com/general/latest/gr/ebs-service.html)
in the *Amazon Web Services General Reference*.

### Usage

    ebs(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ebs_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- ebs(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../ebs_complete_snapshot/"> complete_snapshot </a></td>
<td style="text-align: left;">Seals and completes the snapshot after all
of the required blocks of data have been written to it</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ebs_get_snapshot_block/"> get_snapshot_block </a></td>
<td style="text-align: left;">Returns the data in a block in an Amazon
Elastic Block Store snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ebs_list_changed_blocks/"> list_changed_blocks </a></td>
<td style="text-align: left;">Returns information about the blocks that
are different between two Amazon Elastic Block Store snapshots of the
same volume/snapshot lineage</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ebs_list_snapshot_blocks/"> list_snapshot_blocks </a></td>
<td style="text-align: left;">Returns information about the blocks in an
Amazon Elastic Block Store snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ebs_put_snapshot_block/"> put_snapshot_block </a></td>
<td style="text-align: left;">Writes a block of data to a snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ebs_start_snapshot/"> start_snapshot </a></td>
<td style="text-align: left;">Creates a new Amazon EBS snapshot</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ebs()
    svc$complete_snapshot(
      Foo = 123
    )

    ## End(Not run)
