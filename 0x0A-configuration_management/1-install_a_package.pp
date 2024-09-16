# Install Flask 2.1.0 and compatible Werkzeug version
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

package { 'werkzeug':
  ensure   => '2.0.3', # compatible version with Flask 2.1.0
  provider => 'pip3',
}
