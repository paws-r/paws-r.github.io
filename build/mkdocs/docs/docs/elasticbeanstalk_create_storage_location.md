<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_create_storage_location</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments

### Description

Creates a bucket in Amazon S3 to store application versions, logs, and
other files used by Elastic Beanstalk environments. The Elastic
Beanstalk console and EB CLI call this API the first time you create an
environment in a region. If the storage location already exists,
`create_storage_location` still returns the bucket name but does not
create a new bucket.

### Usage

    elasticbeanstalk_create_storage_location()

### Value

A list with the following syntax:

    list(
      S3Bucket = "string"
    )

### Examples

    ## Not run: 
    # The following operation creates a new environment for version v1 of a
    # java application named my-app:
    svc$create_storage_location()

    ## End(Not run)
