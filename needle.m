% Buffon's Needle Simulation with Graphics

% Parameters
numNeedles = 100;     % Number of needles to simulate
needleLength = 1;      % Length of the needle
numLines = 5;          % Number of parallel lines
lineSpacing = 1;       % Spacing between parallel lines
boardWidth = 2;        % Width of the board

% Initialize variables
crossedLines = zeros(1, numLines);

% Initialize plot
figure;
hold on;
xlim([0 boardWidth]);
ylim([0 (numLines + 1) * lineSpacing]);
title('Buffon''s Needle Simulation with Multiple Lines');
xlabel('Board Width');
ylabel('Line Spacing');

% Draw parallel lines
for i = 1:numLines
    y = i * lineSpacing;
    line([0 boardWidth], [y y], 'Color', 'r', 'LineWidth', 2);
end

% Simulate and plot the needles
for i = 1:numNeedles
    % Sample midpoint and angle uniformly
    midPoint = rand() * boardWidth;
    angle = rand() * pi;
    
    for j = 1:numLines
        y = j * lineSpacing;
        distanceToLine = min(midPoint, boardWidth - midPoint);
        
        x1 = midPoint - 0.5 * needleLength * cos(angle);
        x2 = midPoint + 0.5 * needleLength * cos(angle);
        y1 = j * lineSpacing - 0.5 * needleLength * sin(angle);
        y2 = j * lineSpacing + 0.5 * needleLength * sin(angle);
        
        plot([x1, x2], [y1, y2], 'b');
        
        if distanceToLine <= 0.5 * needleLength * sin(angle)
            crossedLines(j) = crossedLines(j) + 1;
        end
    end
end

% Calculate the estimated probabilities
estimatedProbabilities = crossedLines / numNeedles;

% Calculate the theoretical probability
theoreticalProbability = 2 * needleLength / (pi * lineSpacing);

% Display results
fprintf('Number of needles: %d\n', numNeedles);
for i = 1:numLines
    fprintf('Estimated probability for line %d: %.4f\n', i, estimatedProbabilities(i));
end
fprintf('Theoretical probability: %.4f\n', theoreticalProbability);

hold off;
