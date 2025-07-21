interface Point {
  x: number;
  y: number;
}
 
function logPoint(p: Point) {
  console.log(`${p.x}, ${p.y}`);
}
 
// logs "12, 26"
const point = { x: 12, y: 26 };
logPoint(point);

const point3 = { x: 12, y: 26, z: 89 };
logPoint(point3); // logs "12, 26"
 
const rect = { x: 33, y: 3, width: 30, height: 80 };
logPoint(rect); // logs "33, 3"
 
const color = { hex: "#187ABF" };
logPoint(color);

type TimingEvent = { name: "start"; userStarted: boolean } | { name: "closed"; duration: number };

// When event comes into this function, it could be any
// of the two potential types.

const handleEvent = (event: TimingEvent) => {
  // By using a switch against event.name TypeScript's code
  // flow analysis can determine that an object can only
  // be represented by one type in the union.

  switch (event.name) {
    case "start":
      // This means you can safely access userStarted
      // because it's the only type inside TimingEvent
      // where name is "start"
      const initiatedByUser = event.userStarted;
      break;

    case "closed":
      const timespan = event.duration;
      break;
  }
};
