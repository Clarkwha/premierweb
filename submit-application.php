<?php
header('Content-Type: application/json');

// Get form data
$data = json_decode(file_get_contents('php://input'), true);

// Validate required fields
$required_fields = ['full-name', 'email', 'phone', 'position', 'shifts'];
$missing_fields = array_filter($required_fields, function($field) use ($data) {
    return empty($data[$field]);
});

if (!empty($missing_fields)) {
    http_response_code(400);
    echo json_encode(['error' => 'Missing required fields: ' . implode(', ', $missing_fields)]);
    exit;
}

// Log the data to a file for testing
$log_file = 'application_submissions.txt';
$log_data = date('Y-m-d H:i:s') . "\n";
$log_data .= "Full Name: " . $data['full-name'] . "\n";
$log_data .= "Email: " . $data['email'] . "\n";
$log_data .= "Phone: " . $data['phone'] . "\n";
$log_data .= "Position: " . $data['position'] . "\n";
$log_data .= "Available Shifts: " . (isset($data['shifts']) ? implode(', ', $data['shifts']) : 'None') . "\n";

if (!empty($data['cover-letter'])) {
    $log_data .= "\nAdditional Information:\n" . $data['cover-letter'] . "\n";
}

// Write to log file
file_put_contents($log_file, $log_data . "\n", FILE_APPEND);

// Return success response
http_response_code(200);
echo json_encode(['success' => true, 'message' => 'Application received successfully']);
?>
