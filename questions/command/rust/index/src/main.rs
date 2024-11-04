#[derive(PartialEq)]
enum Status {
    Perfect,
    Great,
    Good,
    Bad,
    Miss,
}

fn command(s: &[Status]) -> &'static str {
    if s.iter().all(|x| is_perfect(x)) {
        perfect()
    } else if s.iter().all(|x| is_perfect(x) || is_great(x)) {
        full_combo()
    } else {
        failed()
    }
}

fn is_perfect(s: &Status) -> bool {
    s == &Status::Perfect
}

fn is_great(s: &Status) -> bool {
    s == &Status::Great
}

fn perfect() -> &'static str {
    "All Perfect"
}

fn full_combo() -> &'static str {
    "Full Combo"
}

fn failed() -> &'static str {
    "Failed"
}

fn main() {
    let input1 = vec![Status::Perfect, Status::Perfect];
    let input2 = vec![Status::Perfect, Status::Great];
    let input3 = vec![Status::Good, Status::Bad, Status::Miss, Status::Great];

    println!("{}", command(&input1)); // "All Perfect"
    println!("{}", command(&input2)); // "Full Combo"
    println!("{}", command(&input3)); // "Failed"
}
