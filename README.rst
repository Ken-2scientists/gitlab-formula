gitlab
======

Formula to set up and configure `GitLab
<https://gilab.com/gitlab-org/gitlab-ce>`_. 

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/topcs/conventions/formulas.html>`_.


Formula Dependencies
====================

* `postgres
  <https://github.com/saltstack-formulas/postgres-formula>`_


Available states
================

.. contents::
    :local:

``gitlab``
----------

Installs GitLab


Original notes
================

SaltStack formula to install GitLab

Salt state for installing GitLab - https://gitlab.com/gitlab-org/gitlab-ce

Following original install docs ( https://gitlab.com/gitlab-org/gitlab-ce/blob/6-5-stable/doc/install/installation.md ) as close as possible, with some exceptions:
* ruby 1.9.3 is enough for it to work, so I'm using system packages for that
* Using PostgreSQL "because".

Currently tested only on Debian, further systems planned.

Initial work done for CentOS but doesn't work there yet, heavily inspired by https://github.com/gitlabhq/gitlab-recipes/tree/master/install/centos

There are some initial bits for supporting RVM, but it's not working yet.

I chose to use PostgreSQL "because", planning to make this tunable via pillar.

I assume you're running gitlab under your node's FQDN, not under another name.

Attempt made to have most settings tunable via pillars.

